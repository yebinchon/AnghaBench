; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_config_top_ports.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_config_top_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_2__, %struct.RangeList }
%struct.TYPE_2__ = type { i64, i64 }
%struct.RangeList = type { i32 }

@config_top_ports.top_tcp_ports = internal constant [1000 x i16] [i16 1, i16 3, i16 4, i16 6, i16 7, i16 9, i16 13, i16 17, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 30, i16 32, i16 33, i16 37, i16 42, i16 43, i16 49, i16 53, i16 70, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 88, i16 89, i16 90, i16 99, i16 100, i16 106, i16 109, i16 110, i16 111, i16 113, i16 119, i16 125, i16 135, i16 139, i16 143, i16 144, i16 146, i16 161, i16 163, i16 179, i16 199, i16 211, i16 212, i16 222, i16 254, i16 255, i16 256, i16 259, i16 264, i16 280, i16 301, i16 306, i16 311, i16 340, i16 366, i16 389, i16 406, i16 407, i16 416, i16 417, i16 425, i16 427, i16 443, i16 444, i16 445, i16 458, i16 464, i16 465, i16 481, i16 497, i16 500, i16 512, i16 513, i16 514, i16 515, i16 524, i16 541, i16 543, i16 544, i16 545, i16 548, i16 554, i16 555, i16 563, i16 587, i16 593, i16 616, i16 617, i16 625, i16 631, i16 636, i16 646, i16 648, i16 666, i16 667, i16 668, i16 683, i16 687, i16 691, i16 700, i16 705, i16 711, i16 714, i16 720, i16 722, i16 726, i16 749, i16 765, i16 777, i16 783, i16 787, i16 800, i16 801, i16 808, i16 843, i16 873, i16 880, i16 888, i16 898, i16 900, i16 901, i16 902, i16 903, i16 911, i16 912, i16 981, i16 987, i16 990, i16 992, i16 993, i16 995, i16 999, i16 1000, i16 1001, i16 1002, i16 1007, i16 1009, i16 1010, i16 1011, i16 1021, i16 1022, i16 1023, i16 1024, i16 1025, i16 1026, i16 1027, i16 1028, i16 1029, i16 1030, i16 1031, i16 1032, i16 1033, i16 1034, i16 1035, i16 1036, i16 1037, i16 1038, i16 1039, i16 1040, i16 1041, i16 1042, i16 1043, i16 1044, i16 1045, i16 1046, i16 1047, i16 1048, i16 1049, i16 1050, i16 1051, i16 1052, i16 1053, i16 1054, i16 1055, i16 1056, i16 1057, i16 1058, i16 1059, i16 1060, i16 1061, i16 1062, i16 1063, i16 1064, i16 1065, i16 1066, i16 1067, i16 1068, i16 1069, i16 1070, i16 1071, i16 1072, i16 1073, i16 1074, i16 1075, i16 1076, i16 1077, i16 1078, i16 1079, i16 1080, i16 1081, i16 1082, i16 1083, i16 1084, i16 1085, i16 1086, i16 1087, i16 1088, i16 1089, i16 1090, i16 1091, i16 1092, i16 1093, i16 1094, i16 1095, i16 1096, i16 1097, i16 1098, i16 1099, i16 1100, i16 1102, i16 1104, i16 1105, i16 1106, i16 1107, i16 1108, i16 1110, i16 1111, i16 1112, i16 1113, i16 1114, i16 1117, i16 1119, i16 1121, i16 1122, i16 1123, i16 1124, i16 1126, i16 1130, i16 1131, i16 1132, i16 1137, i16 1138, i16 1141, i16 1145, i16 1147, i16 1148, i16 1149, i16 1151, i16 1152, i16 1154, i16 1163, i16 1164, i16 1165, i16 1166, i16 1169, i16 1174, i16 1175, i16 1183, i16 1185, i16 1186, i16 1187, i16 1192, i16 1198, i16 1199, i16 1201, i16 1213, i16 1216, i16 1217, i16 1218, i16 1233, i16 1234, i16 1236, i16 1244, i16 1247, i16 1248, i16 1259, i16 1271, i16 1272, i16 1277, i16 1287, i16 1296, i16 1300, i16 1301, i16 1309, i16 1310, i16 1311, i16 1322, i16 1328, i16 1334, i16 1352, i16 1417, i16 1433, i16 1434, i16 1443, i16 1455, i16 1461, i16 1494, i16 1500, i16 1501, i16 1503, i16 1521, i16 1524, i16 1533, i16 1556, i16 1580, i16 1583, i16 1594, i16 1600, i16 1641, i16 1658, i16 1666, i16 1687, i16 1688, i16 1700, i16 1717, i16 1718, i16 1719, i16 1720, i16 1721, i16 1723, i16 1755, i16 1761, i16 1782, i16 1783, i16 1801, i16 1805, i16 1812, i16 1839, i16 1840, i16 1862, i16 1863, i16 1864, i16 1875, i16 1900, i16 1914, i16 1935, i16 1947, i16 1971, i16 1972, i16 1974, i16 1984, i16 1998, i16 1999, i16 2000, i16 2001, i16 2002, i16 2003, i16 2004, i16 2005, i16 2006, i16 2007, i16 2008, i16 2009, i16 2010, i16 2013, i16 2020, i16 2021, i16 2022, i16 2030, i16 2033, i16 2034, i16 2035, i16 2038, i16 2040, i16 2041, i16 2042, i16 2043, i16 2045, i16 2046, i16 2047, i16 2048, i16 2049, i16 2065, i16 2068, i16 2099, i16 2100, i16 2103, i16 2105, i16 2106, i16 2107, i16 2111, i16 2119, i16 2121, i16 2126, i16 2135, i16 2144, i16 2160, i16 2161, i16 2170, i16 2179, i16 2190, i16 2191, i16 2196, i16 2200, i16 2222, i16 2251, i16 2260, i16 2288, i16 2301, i16 2323, i16 2366, i16 2381, i16 2382, i16 2383, i16 2393, i16 2394, i16 2399, i16 2401, i16 2492, i16 2500, i16 2522, i16 2525, i16 2557, i16 2601, i16 2602, i16 2604, i16 2605, i16 2607, i16 2608, i16 2638, i16 2701, i16 2702, i16 2710, i16 2717, i16 2718, i16 2725, i16 2800, i16 2809, i16 2811, i16 2869, i16 2875, i16 2909, i16 2910, i16 2920, i16 2967, i16 2968, i16 2998, i16 3000, i16 3001, i16 3003, i16 3005, i16 3006, i16 3007, i16 3011, i16 3013, i16 3017, i16 3030, i16 3031, i16 3052, i16 3071, i16 3077, i16 3128, i16 3168, i16 3211, i16 3221, i16 3260, i16 3261, i16 3268, i16 3269, i16 3283, i16 3300, i16 3301, i16 3306, i16 3322, i16 3323, i16 3324, i16 3325, i16 3333, i16 3351, i16 3367, i16 3369, i16 3370, i16 3371, i16 3372, i16 3389, i16 3390, i16 3404, i16 3476, i16 3493, i16 3517, i16 3527, i16 3546, i16 3551, i16 3580, i16 3659, i16 3689, i16 3690, i16 3703, i16 3737, i16 3766, i16 3784, i16 3800, i16 3801, i16 3809, i16 3814, i16 3826, i16 3827, i16 3828, i16 3851, i16 3869, i16 3871, i16 3878, i16 3880, i16 3889, i16 3905, i16 3914, i16 3918, i16 3920, i16 3945, i16 3971, i16 3986, i16 3995, i16 3998, i16 4000, i16 4001, i16 4002, i16 4003, i16 4004, i16 4005, i16 4006, i16 4045, i16 4111, i16 4125, i16 4126, i16 4129, i16 4224, i16 4242, i16 4279, i16 4321, i16 4343, i16 4443, i16 4444, i16 4445, i16 4446, i16 4449, i16 4550, i16 4567, i16 4662, i16 4848, i16 4899, i16 4900, i16 4998, i16 5000, i16 5001, i16 5002, i16 5003, i16 5004, i16 5009, i16 5030, i16 5033, i16 5050, i16 5051, i16 5054, i16 5060, i16 5061, i16 5080, i16 5087, i16 5100, i16 5101, i16 5102, i16 5120, i16 5190, i16 5200, i16 5214, i16 5221, i16 5222, i16 5225, i16 5226, i16 5269, i16 5280, i16 5298, i16 5357, i16 5405, i16 5414, i16 5431, i16 5432, i16 5440, i16 5500, i16 5510, i16 5544, i16 5550, i16 5555, i16 5560, i16 5566, i16 5631, i16 5633, i16 5666, i16 5678, i16 5679, i16 5718, i16 5730, i16 5800, i16 5801, i16 5802, i16 5810, i16 5811, i16 5815, i16 5822, i16 5825, i16 5850, i16 5859, i16 5862, i16 5877, i16 5900, i16 5901, i16 5902, i16 5903, i16 5904, i16 5906, i16 5907, i16 5910, i16 5911, i16 5915, i16 5922, i16 5925, i16 5950, i16 5952, i16 5959, i16 5960, i16 5961, i16 5962, i16 5963, i16 5987, i16 5988, i16 5989, i16 5998, i16 5999, i16 6000, i16 6001, i16 6002, i16 6003, i16 6004, i16 6005, i16 6006, i16 6007, i16 6009, i16 6025, i16 6059, i16 6100, i16 6101, i16 6106, i16 6112, i16 6123, i16 6129, i16 6156, i16 6346, i16 6389, i16 6502, i16 6510, i16 6543, i16 6547, i16 6565, i16 6566, i16 6567, i16 6580, i16 6646, i16 6666, i16 6667, i16 6668, i16 6669, i16 6689, i16 6692, i16 6699, i16 6779, i16 6788, i16 6789, i16 6792, i16 6839, i16 6881, i16 6901, i16 6969, i16 7000, i16 7001, i16 7002, i16 7004, i16 7007, i16 7019, i16 7025, i16 7070, i16 7100, i16 7103, i16 7106, i16 7200, i16 7201, i16 7402, i16 7435, i16 7443, i16 7496, i16 7512, i16 7625, i16 7627, i16 7676, i16 7741, i16 7777, i16 7778, i16 7800, i16 7911, i16 7920, i16 7921, i16 7937, i16 7938, i16 7999, i16 8000, i16 8001, i16 8002, i16 8007, i16 8008, i16 8009, i16 8010, i16 8011, i16 8021, i16 8022, i16 8031, i16 8042, i16 8045, i16 8080, i16 8081, i16 8082, i16 8083, i16 8084, i16 8085, i16 8086, i16 8087, i16 8088, i16 8089, i16 8090, i16 8093, i16 8099, i16 8100, i16 8180, i16 8181, i16 8192, i16 8193, i16 8194, i16 8200, i16 8222, i16 8254, i16 8290, i16 8291, i16 8292, i16 8300, i16 8333, i16 8383, i16 8400, i16 8402, i16 8443, i16 8500, i16 8600, i16 8649, i16 8651, i16 8652, i16 8654, i16 8701, i16 8800, i16 8873, i16 8888, i16 8899, i16 8994, i16 9000, i16 9001, i16 9002, i16 9003, i16 9009, i16 9010, i16 9011, i16 9040, i16 9050, i16 9071, i16 9080, i16 9081, i16 9090, i16 9091, i16 9099, i16 9100, i16 9101, i16 9102, i16 9103, i16 9110, i16 9111, i16 9200, i16 9207, i16 9220, i16 9290, i16 9415, i16 9418, i16 9485, i16 9500, i16 9502, i16 9503, i16 9535, i16 9575, i16 9593, i16 9594, i16 9595, i16 9618, i16 9666, i16 9876, i16 9877, i16 9878, i16 9898, i16 9900, i16 9917, i16 9929, i16 9943, i16 9944, i16 9968, i16 9998, i16 9999, i16 10000, i16 10001, i16 10002, i16 10003, i16 10004, i16 10009, i16 10010, i16 10012, i16 10024, i16 10025, i16 10082, i16 10180, i16 10215, i16 10243, i16 10566, i16 10616, i16 10617, i16 10621, i16 10626, i16 10628, i16 10629, i16 10778, i16 11110, i16 11111, i16 11967, i16 12000, i16 12174, i16 12265, i16 12345, i16 13456, i16 13722, i16 13782, i16 13783, i16 14000, i16 14238, i16 14441, i16 14442, i16 15000, i16 15002, i16 15003, i16 15004, i16 15660, i16 15742, i16 16000, i16 16001, i16 16012, i16 16016, i16 16018, i16 16080, i16 16113, i16 16992, i16 16993, i16 17877, i16 17988, i16 18040, i16 18101, i16 18988, i16 19101, i16 19283, i16 19315, i16 19350, i16 19780, i16 19801, i16 19842, i16 20000, i16 20005, i16 20031, i16 20221, i16 20222, i16 20828, i16 21571, i16 22939, i16 23502, i16 24444, i16 24800, i16 25734, i16 25735, i16 26214, i16 27000, i16 27352, i16 27353, i16 27355, i16 27356, i16 27715, i16 28201, i16 30000, i16 30718, i16 30951, i16 31038, i16 31337, i16 -32768, i16 -32767, i16 -32766, i16 -32765, i16 -32764, i16 -32763, i16 -32762, i16 -32761, i16 -32760, i16 -32759, i16 -32758, i16 -32757, i16 -32756, i16 -32755, i16 -32754, i16 -32753, i16 -32752, i16 -32751, i16 -32182, i16 -31637, i16 -30965, i16 -30964, i16 -30963, i16 -30036, i16 -27244, i16 -25343, i16 -24625, i16 -24025, i16 -23026, i16 -21360, i16 -21094, i16 -21093, i16 -21035, i16 -20436, i16 -17456, i16 -16384, i16 -16383, i16 -16382, i16 -16381, i16 -16380, i16 -16379, i16 -16378, i16 -16377, i16 -16376, i16 -16375, i16 -16373, i16 -16371, i16 -16369, i16 -16361, i16 -16360, i16 -16136, i16 -15537, i16 -15536, i16 -15535, i16 -15534, i16 -15533, i16 -15530, i16 -15236, i16 -15147, i16 -15036, i16 -14900, i16 -14736, i16 -14433, i16 -14043, i16 -12863, i16 -12714, i16 -12688, i16 -12667, i16 -11491, i16 -11208, i16 -10481, i16 -10480, i16 -9981, i16 -9936, i16 -8799, i16 -8798, i16 -8242, i16 -7739, i16 -7456, i16 -5516, i16 -5093, i16 -4004, i16 -3636, i16 -3458, i16 -2205, i16 -913, i16 -856, i16 -536, i16 -407, i16 -147], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Masscan*, i32)* @config_top_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_top_ports(%struct.Masscan* %0, i32 %1) #0 {
  %3 = alloca %struct.Masscan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.RangeList*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %8 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %7, i32 0, i32 1
  store %struct.RangeList* %8, %struct.RangeList** %6, align 8
  %9 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %10 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %21, 1000
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %39

25:                                               ; preds = %23
  %26 = load %struct.RangeList*, %struct.RangeList** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [1000 x i16], [1000 x i16]* @config_top_ports.top_tcp_ports, i64 0, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [1000 x i16], [1000 x i16]* @config_top_ports.top_tcp_ports, i64 0, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = call i32 @rangelist_add_range(%struct.RangeList* %26, i16 zeroext %30, i16 zeroext %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %15

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %42 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp ult i64 %53, 1000
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  br i1 %56, label %57, label %71

57:                                               ; preds = %55
  %58 = load %struct.RangeList*, %struct.RangeList** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [1000 x i16], [1000 x i16]* @config_top_ports.top_tcp_ports, i64 0, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [1000 x i16], [1000 x i16]* @config_top_ports.top_tcp_ports, i64 0, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = call i32 @rangelist_add_range(%struct.RangeList* %58, i16 zeroext %62, i16 zeroext %66)
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %47

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %40
  %73 = load %struct.RangeList*, %struct.RangeList** %6, align 8
  %74 = call i32 @rangelist_sort(%struct.RangeList* %73)
  ret void
}

declare dso_local i32 @rangelist_add_range(%struct.RangeList*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @rangelist_sort(%struct.RangeList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
