; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_xml.c__extract_flags.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_xml.c__extract_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i8*, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"<flags\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"</flags>\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"size=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"<field\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"start=\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"end=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i8*)* @_extract_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @_extract_flags(i8* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %14 = call %struct.TYPE_13__* (...) @r_list_new()
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %13, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %241

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32 (%struct.TYPE_12__*)* @free, i32 (%struct.TYPE_12__*)** %19, align 8
  br label %20

20:                                               ; preds = %220, %17
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %230

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %232

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  store i8 0, i8* %30, align 1
  %31 = call %struct.TYPE_12__* @calloc(i32 1, i32 24)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %12, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %232

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = call i8* @strstr(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %36, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %232

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 34)
  store i8* %43, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %232

46:                                               ; preds = %39
  %47 = load i8*, i8** %5, align 8
  store i8 0, i8* %47, align 1
  store i32 8, i32* %10, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @strncpy(i8* %50, i8* %51, i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %5, align 8
  store i8 34, i8* %62, align 1
  %63 = load i8*, i8** %3, align 8
  %64 = call i8* @strstr(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %64, i8** %4, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %46
  br label %232

67:                                               ; preds = %46
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 6
  store i8* %69, i8** %4, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 @strtoul(i8* %70, i32* null, i32 10)
  %72 = inttoptr i64 %71 to i8*
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = icmp ne i32 %73, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  br label %232

78:                                               ; preds = %67
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 8
  store i32 %82, i32* %80, align 8
  store i32 0, i32* %9, align 4
  %83 = load i8*, i8** %3, align 8
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %183, %117, %78
  %85 = load i8*, i8** %7, align 8
  %86 = call i8* @strstr(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %86, i8** %7, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %220

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = icmp sge i32 %89, 64
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %220

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8
  %94 = call i8* @strstr(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %94, i8** %8, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  br label %232

97:                                               ; preds = %92
  %98 = load i8*, i8** %8, align 8
  store i8 0, i8* %98, align 1
  %99 = load i8*, i8** %7, align 8
  %100 = call i8* @strstr(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i8* %100, i8** %4, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %232

103:                                              ; preds = %97
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 6
  store i8* %105, i8** %4, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = call i8* @strchr(i8* %106, i8 signext 34)
  store i8* %107, i8** %5, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %232

110:                                              ; preds = %103
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = icmp sle i64 %115, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i8*, i8** %8, align 8
  store i8 47, i8* %118, align 1
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8* %120, i8** %7, align 8
  br label %84

121:                                              ; preds = %110
  %122 = load i8*, i8** %5, align 8
  store i8 0, i8* %122, align 1
  store i32 8, i32* %11, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %132, 1
  %134 = call i32 @strncpy(i8* %130, i8* %131, i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 0, i8* %146, align 1
  %147 = load i8*, i8** %5, align 8
  store i8 34, i8* %147, align 1
  %148 = load i8*, i8** %7, align 8
  %149 = call i8* @strstr(i8* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i8* %149, i8** %4, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %121
  br label %232

152:                                              ; preds = %121
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 7
  store i8* %154, i8** %4, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = load i8, i8* %155, align 1
  %157 = call i32 @isdigit(i8 signext %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %152
  br label %232

160:                                              ; preds = %152
  %161 = load i8*, i8** %4, align 8
  %162 = call i64 @strtoul(i8* %161, i32* null, i32 10)
  %163 = inttoptr i64 %162 to i8*
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  store i8* %163, i8** %170, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = call i8* @strstr(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i8* %172, i8** %4, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %160
  br label %232

175:                                              ; preds = %160
  %176 = load i8*, i8** %4, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 5
  store i8* %177, i8** %4, align 8
  %178 = load i8*, i8** %4, align 8
  %179 = load i8, i8* %178, align 1
  %180 = call i32 @isdigit(i8 signext %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %175
  br label %232

183:                                              ; preds = %175
  %184 = load i8*, i8** %4, align 8
  %185 = call i64 @strtoul(i8* %184, i32* null, i32 10)
  %186 = inttoptr i64 %185 to i8*
  %187 = getelementptr i8, i8* %186, i64 1
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  store i8* %187, i8** %194, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 3
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %210 to i64
  %212 = ptrtoint i8* %202 to i64
  %213 = sub i64 %211, %212
  %214 = inttoptr i64 %213 to i8*
  store i8* %214, i8** %209, align 8
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  %217 = load i8*, i8** %8, align 8
  store i8 47, i8* %217, align 1
  %218 = load i8*, i8** %8, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  store i8* %219, i8** %7, align 8
  br label %84

220:                                              ; preds = %91, %84
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %226 = call i32 @r_list_push(%struct.TYPE_13__* %224, %struct.TYPE_12__* %225)
  %227 = load i8*, i8** %6, align 8
  store i8 60, i8* %227, align 1
  %228 = load i8*, i8** %6, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  store i8* %229, i8** %3, align 8
  br label %20

230:                                              ; preds = %20
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %231, %struct.TYPE_13__** %2, align 8
  br label %241

232:                                              ; preds = %182, %174, %159, %151, %109, %102, %96, %77, %66, %45, %38, %33, %28
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %234 = icmp ne %struct.TYPE_13__* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %237 = call i32 @r_list_free(%struct.TYPE_13__* %236)
  br label %238

238:                                              ; preds = %235, %232
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %240 = call i32 @free(%struct.TYPE_12__* %239)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %241

241:                                              ; preds = %238, %230, %16
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %242
}

declare dso_local %struct.TYPE_13__* @r_list_new(...) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @r_list_push(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @r_list_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
