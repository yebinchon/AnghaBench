
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
const char *web_content_type_to_string(uint8_t contenttype) {
    switch(contenttype) {
        case 131:
            return "text/html; charset=utf-8";

        case 144:
            return "application/xml; charset=utf-8";

        case 147:
            return "application/json; charset=utf-8";

        case 141:
            return "application/x-javascript; charset=utf-8";

        case 132:
            return "text/css; charset=utf-8";

        case 129:
            return "text/xml; charset=utf-8";

        case 128:
            return "text/xsl; charset=utf-8";

        case 146:
            return "application/octet-stream";

        case 135:
            return "image/svg+xml";

        case 142:
            return "application/x-font-truetype";

        case 143:
            return "application/x-font-opentype";

        case 149:
            return "application/font-woff";

        case 148:
            return "application/font-woff2";

        case 145:
            return "application/vnd.ms-fontobject";

        case 136:
            return "image/png";

        case 137:
            return "image/jpeg";

        case 139:
            return "image/gif";

        case 134:
            return "image/x-icon";

        case 140:
            return "image/bmp";

        case 138:
            return "image/icns";

        case 133:
            return "text/plain; version=0.0.4";

        default:
        case 130:
            return "text/plain; charset=utf-8";
    }
}
