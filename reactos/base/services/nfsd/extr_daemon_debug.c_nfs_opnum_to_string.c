
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char* nfs_opnum_to_string(int opnum)
{
    switch (opnum)
    {
    case 184: return "ACCESS";
    case 181: return "CLOSE";
    case 180: return "COMMIT";
    case 179: return "CREATE";
    case 177: return "DELEGPURGE";
    case 176: return "DELEGRETURN";
    case 171: return "GETATTR";
    case 168: return "GETFH";
    case 162: return "LINK";
    case 161: return "LOCK";
    case 160: return "LOCKT";
    case 159: return "LOCKU";
    case 158: return "LOOKUP";
    case 157: return "LOOKUPP";
    case 156: return "NVERIFY";
    case 155: return "OPEN";
    case 154: return "OPENATTR";
    case 153: return "OPEN_CONFIRM";
    case 152: return "OPEN_DOWNGRADE";
    case 151: return "PUTFH";
    case 150: return "PUTPUBFH";
    case 149: return "PUTROOTFH";
    case 148: return "READ";
    case 147: return "READDIR";
    case 146: return "READLINK";
    case 143: return "REMOVE";
    case 142: return "RENAME";
    case 141: return "RENEW";
    case 140: return "RESTOREFH";
    case 139: return "SAVEFH";
    case 138: return "SECINFO";
    case 135: return "SETATTR";
    case 134: return "SETCLIENTID";
    case 133: return "SETCLIENTID_CONFIRM";
    case 130: return "VERIFY";
    case 128: return "WRITE";
    case 144: return "RELEASE_LOCKOWNER";
    case 183: return "BACKCHANNEL_CTL";
    case 182: return "BIND_CONN_TO_SESSION";
    case 173: return "EXCHANGE_ID";
    case 178: return "CREATE_SESSION";
    case 174: return "DESTROY_SESSION";
    case 172: return "FREE_STATEID";
    case 167: return "GET_DIR_DELEGATION";
    case 170: return "GETDEVICEINFO";
    case 169: return "GETDEVICELIST";
    case 165: return "LAYOUTCOMMIT";
    case 164: return "LAYOUTGET";
    case 163: return "LAYOUTRETURN";
    case 137: return "SECINFO_NO_NAME";
    case 136: return "SEQUENCE";
    case 132: return "SET_SSV";
    case 131: return "TEST_STATEID";
    case 129: return "WANT_DELEGATION";
    case 175: return "DESTROY_CLIENTID";
    case 145: return "RECLAIM_COMPLETE";
    case 166: return "ILLEGAL";
    default: return "invalid nfs opnum";
    }
}
