; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_output_format.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_output_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"output-format = interactive\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"output-format = list\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"output-format = unicornscan\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"output-format = xml\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"output-format = binary\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"output-format = grepable\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"output-format = json\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"output-format = ndjson\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"output-format = certs\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"output-format = none\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"output-format = redis\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"redis = %u.%u.%u.%u:%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"output-format = unknown(%u)\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"unknown(0)\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"unicornscan\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"greppable\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"grepable\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"ndjson\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"certs\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"redis\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"FAIL: unknown output-format: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"  hint: 'binary', 'xml', 'grepable', ...\0A\00", align 1
@CONF_ERR = common dso_local global i32 0, align 4
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_output_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_output_format(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @UNUSEDPARM(i8* %10)
  %12 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %13 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %108

16:                                               ; preds = %3
  %17 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %18 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %21 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %100 [
    i32 137, label %24
    i32 135, label %33
    i32 133, label %36
    i32 129, label %39
    i32 128, label %42
    i32 139, label %45
    i32 136, label %48
    i32 134, label %51
    i32 132, label %54
    i32 138, label %57
    i32 131, label %60
    i32 130, label %63
  ]

24:                                               ; preds = %16
  %25 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %26 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  br label %107

33:                                               ; preds = %16
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %107

36:                                               ; preds = %16
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %107

39:                                               ; preds = %16
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %107

42:                                               ; preds = %16
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %107

45:                                               ; preds = %16
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %107

48:                                               ; preds = %16
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %107

51:                                               ; preds = %16
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %107

54:                                               ; preds = %16
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %107

57:                                               ; preds = %16
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %107

60:                                               ; preds = %16
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %107

63:                                               ; preds = %16
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %68 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 24
  %72 = trunc i32 %71 to i8
  %73 = zext i8 %72 to i32
  %74 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %75 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 16
  %79 = trunc i32 %78 to i8
  %80 = zext i8 %79 to i32
  %81 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %82 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 8
  %86 = trunc i32 %85 to i8
  %87 = zext i8 %86 to i32
  %88 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %89 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 0
  %93 = trunc i32 %92 to i8
  %94 = zext i8 %93 to i32
  %95 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %96 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %73, i32 %80, i32 %87, i32 %94, i32 %98)
  br label %107

100:                                              ; preds = %16
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %103 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %100, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %32
  store i32 0, i32* %4, align 4
  br label %196

108:                                              ; preds = %3
  %109 = load i8*, i8** %7, align 8
  %110 = call i64 @EQUALS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 135, i32* %8, align 4
  br label %190

113:                                              ; preds = %108
  %114 = load i8*, i8** %7, align 8
  %115 = call i64 @EQUALS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 135, i32* %8, align 4
  br label %189

118:                                              ; preds = %113
  %119 = load i8*, i8** %7, align 8
  %120 = call i64 @EQUALS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 133, i32* %8, align 4
  br label %188

123:                                              ; preds = %118
  %124 = load i8*, i8** %7, align 8
  %125 = call i64 @EQUALS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 129, i32* %8, align 4
  br label %187

128:                                              ; preds = %123
  %129 = load i8*, i8** %7, align 8
  %130 = call i64 @EQUALS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 128, i32* %8, align 4
  br label %186

133:                                              ; preds = %128
  %134 = load i8*, i8** %7, align 8
  %135 = call i64 @EQUALS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 139, i32* %8, align 4
  br label %185

138:                                              ; preds = %133
  %139 = load i8*, i8** %7, align 8
  %140 = call i64 @EQUALS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 136, i32* %8, align 4
  br label %184

143:                                              ; preds = %138
  %144 = load i8*, i8** %7, align 8
  %145 = call i64 @EQUALS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 136, i32* %8, align 4
  br label %183

148:                                              ; preds = %143
  %149 = load i8*, i8** %7, align 8
  %150 = call i64 @EQUALS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 134, i32* %8, align 4
  br label %182

153:                                              ; preds = %148
  %154 = load i8*, i8** %7, align 8
  %155 = call i64 @EQUALS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 132, i32* %8, align 4
  br label %181

158:                                              ; preds = %153
  %159 = load i8*, i8** %7, align 8
  %160 = call i64 @EQUALS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 138, i32* %8, align 4
  br label %180

163:                                              ; preds = %158
  %164 = load i8*, i8** %7, align 8
  %165 = call i64 @EQUALS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 131, i32* %8, align 4
  br label %179

168:                                              ; preds = %163
  %169 = load i8*, i8** %7, align 8
  %170 = call i64 @EQUALS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 130, i32* %8, align 4
  br label %178

173:                                              ; preds = %168
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i8* %174)
  %176 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i64 0, i64 0))
  %177 = load i32, i32* @CONF_ERR, align 4
  store i32 %177, i32* %4, align 4
  br label %196

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178, %167
  br label %180

180:                                              ; preds = %179, %162
  br label %181

181:                                              ; preds = %180, %157
  br label %182

182:                                              ; preds = %181, %152
  br label %183

183:                                              ; preds = %182, %147
  br label %184

184:                                              ; preds = %183, %142
  br label %185

185:                                              ; preds = %184, %137
  br label %186

186:                                              ; preds = %185, %132
  br label %187

187:                                              ; preds = %186, %127
  br label %188

188:                                              ; preds = %187, %122
  br label %189

189:                                              ; preds = %188, %117
  br label %190

190:                                              ; preds = %189, %112
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %193 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  %195 = load i32, i32* @CONF_OK, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %190, %173, %107
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @EQUALS(i8*, i8*) #1

declare dso_local i32 @LOG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
