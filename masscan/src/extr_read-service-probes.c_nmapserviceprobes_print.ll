; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_print.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NmapServiceProbeList = type { i32, %struct.NmapServiceProbe**, i32 }
%struct.NmapServiceProbe = type { i32, i8*, i32, i32, i32, %struct.ServiceProbeMatch*, i32, i32, i32, i32 }
%struct.ServiceProbeMatch = type { i8*, %struct.ServiceVersionInfo*, i64, i64, i32, i32, %struct.ServiceProbeMatch* }
%struct.ServiceVersionInfo = type { i32, i64, i32, %struct.ServiceVersionInfo* }

@.str = private unnamed_addr constant [8 x i8] c"Exclude\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Probe %s %s q\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rarity %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"totalwaitms %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"tcpwrappedms %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@Templ_TCP = common dso_local global i32 0, align 4
@Templ_UDP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"sslports\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"match %s m\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"cpe:\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nmapserviceprobes_print(%struct.NmapServiceProbeList* %0, i32* %1) #0 {
  %3 = alloca %struct.NmapServiceProbeList*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.NmapServiceProbe*, align 8
  %7 = alloca %struct.ServiceProbeMatch*, align 8
  %8 = alloca %struct.ServiceVersionInfo*, align 8
  %9 = alloca i8*, align 8
  store %struct.NmapServiceProbeList* %0, %struct.NmapServiceProbeList** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %11 = icmp eq %struct.NmapServiceProbeList* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %208

13:                                               ; preds = %2
  %14 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %15 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %14, i32 0, i32 2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @nmapserviceprobes_print_ports(i32* %15, i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %205, %13
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %21 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %208

24:                                               ; preds = %18
  %25 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %26 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %25, i32 0, i32 1
  %27 = load %struct.NmapServiceProbe**, %struct.NmapServiceProbe*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %27, i64 %29
  %31 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %30, align 8
  store %struct.NmapServiceProbe* %31, %struct.NmapServiceProbe** %6, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %34 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 6
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %39 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %40 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %45 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %48 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @nmapserviceprobes_print_hello(i32* %43, i32 %46, i32 %49, i8 signext 124)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %54 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %24
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %60 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %24
  %64 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %65 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %71 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %76 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %82 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %87 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %86, i32 0, i32 7
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %90 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 6
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @Templ_TCP, align 4
  br label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @Templ_UDP, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 @nmapserviceprobes_print_ports(i32* %87, i32* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  %100 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %101 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %100, i32 0, i32 6
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %104 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 6
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* @Templ_TCP, align 4
  br label %111

109:                                              ; preds = %97
  %110 = load i32, i32* @Templ_UDP, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = call i32 @nmapserviceprobes_print_ports(i32* %101, i32* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %112)
  %114 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %6, align 8
  %115 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %114, i32 0, i32 5
  %116 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %115, align 8
  store %struct.ServiceProbeMatch* %116, %struct.ServiceProbeMatch** %7, align 8
  br label %117

117:                                              ; preds = %200, %111
  %118 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %7, align 8
  %119 = icmp ne %struct.ServiceProbeMatch* %118, null
  br i1 %119, label %120, label %204

120:                                              ; preds = %117
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %7, align 8
  %123 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %124)
  %126 = load i32*, i32** %4, align 8
  %127 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %7, align 8
  %128 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %7, align 8
  %131 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @nmapserviceprobes_print_dstring(i32* %126, i32 %129, i32 %132, i8 signext 47)
  %134 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %7, align 8
  %135 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %120
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %120
  %142 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %7, align 8
  %143 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %141
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 (i32*, i8*, ...) @fprintf(i32* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %152 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %7, align 8
  %153 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %152, i32 0, i32 1
  %154 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %153, align 8
  store %struct.ServiceVersionInfo* %154, %struct.ServiceVersionInfo** %8, align 8
  br label %155

155:                                              ; preds = %193, %149
  %156 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %8, align 8
  %157 = icmp ne %struct.ServiceVersionInfo* %156, null
  br i1 %157, label %158, label %197

158:                                              ; preds = %155
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  %159 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %8, align 8
  %160 = getelementptr inbounds %struct.ServiceVersionInfo, %struct.ServiceVersionInfo* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  switch i32 %161, label %170 [
    i32 129, label %162
    i32 130, label %163
    i32 128, label %164
    i32 132, label %165
    i32 133, label %166
    i32 131, label %167
    i32 134, label %168
    i32 135, label %169
  ]

162:                                              ; preds = %158
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %170

163:                                              ; preds = %158
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %170

164:                                              ; preds = %158
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %170

165:                                              ; preds = %158
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %170

166:                                              ; preds = %158
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %170

167:                                              ; preds = %158
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  br label %170

168:                                              ; preds = %158
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %170

169:                                              ; preds = %158
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %9, align 8
  br label %170

170:                                              ; preds = %158, %169, %168, %167, %166, %165, %164, %163, %162
  %171 = load i32*, i32** %4, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* %172)
  %174 = load i32*, i32** %4, align 8
  %175 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %8, align 8
  %176 = getelementptr inbounds %struct.ServiceVersionInfo, %struct.ServiceVersionInfo* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %8, align 8
  %179 = getelementptr inbounds %struct.ServiceVersionInfo, %struct.ServiceVersionInfo* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @strlen(i32 %180)
  %182 = call i32 @nmapserviceprobes_print_dstring(i32* %174, i32 %177, i32 %181, i8 signext 47)
  %183 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %8, align 8
  %184 = getelementptr inbounds %struct.ServiceVersionInfo, %struct.ServiceVersionInfo* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %170
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 (i32*, i8*, ...) @fprintf(i32* %188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %170
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190
  %194 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %8, align 8
  %195 = getelementptr inbounds %struct.ServiceVersionInfo, %struct.ServiceVersionInfo* %194, i32 0, i32 3
  %196 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %195, align 8
  store %struct.ServiceVersionInfo* %196, %struct.ServiceVersionInfo** %8, align 8
  br label %155

197:                                              ; preds = %155
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 (i32*, i8*, ...) @fprintf(i32* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197
  %201 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %7, align 8
  %202 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %201, i32 0, i32 6
  %203 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %202, align 8
  store %struct.ServiceProbeMatch* %203, %struct.ServiceProbeMatch** %7, align 8
  br label %117

204:                                              ; preds = %117
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %5, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %18

208:                                              ; preds = %12, %18
  ret void
}

declare dso_local i32 @nmapserviceprobes_print_ports(i32*, i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @nmapserviceprobes_print_hello(i32*, i32, i32, i8 signext) #1

declare dso_local i32 @nmapserviceprobes_print_dstring(i32*, i32, i32, i8 signext) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
