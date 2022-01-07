
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int peer_status_t ;
typedef int handshake_status_t ;


 int CLIENT_ERROR ;
 int HANDSHAKE_RETRY ;
 int HANDSHAKE_SUCCESS ;
 int INTERNAL_ERROR ;





 int SERVER_ERROR ;

__attribute__((used)) static handshake_status_t handshake_status(peer_status_t last_status,
                                           peer_status_t previous_status,
                                           int client_spoke_last)
{
    switch (last_status) {
    case 129:
        return INTERNAL_ERROR;

    case 128:

        return INTERNAL_ERROR;

    case 130:
        switch (previous_status) {
        case 129:
            return INTERNAL_ERROR;
        case 130:

            return HANDSHAKE_SUCCESS;
        case 128:
        case 131:

            return HANDSHAKE_RETRY;
        case 132:




            return INTERNAL_ERROR;
        }
        break;

    case 131:
        return HANDSHAKE_RETRY;

    case 132:
        switch (previous_status) {
        case 129:
            return INTERNAL_ERROR;
        case 128:

            return client_spoke_last ? CLIENT_ERROR : INTERNAL_ERROR;
        case 130:







            return client_spoke_last ? CLIENT_ERROR : SERVER_ERROR;
        case 131:

            return HANDSHAKE_RETRY;
        case 132:

            return client_spoke_last ? SERVER_ERROR : CLIENT_ERROR;
        }
    }

    return INTERNAL_ERROR;
}
