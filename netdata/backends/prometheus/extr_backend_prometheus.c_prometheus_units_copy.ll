; ModuleID = '/home/carl/AnghaBench/netdata/backends/prometheus/extr_backend_prometheus.c_prometheus_units_copy.c'
source_filename = "/home/carl/AnghaBench/netdata/backends/prometheus/extr_backend_prometheus.c_prometheus_units_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i64, i8* }

@prometheus_units_copy.units = internal global [12 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"KiB/s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"kilobytes/s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MiB/s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MB/s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"GiB/s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"GB/s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"inodes\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Inodes\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"faults/s\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"page faults/s\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"KiB/operation\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"kilobytes per operation\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"milliseconds/operation\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"ms per operation\00", align 1
@prometheus_units_copy.initialized = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"_percent\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"_persec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64, i32)* @prometheus_units_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prometheus_units_copy(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %97

20:                                               ; preds = %4
  %21 = load i32, i32* @prometheus_units_copy.initialized, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @prometheus_units_copy.units, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @prometheus_units_copy.units, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @simple_hash(i8* %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @prometheus_units_copy.units, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 1
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %28

50:                                               ; preds = %28
  store i32 1, i32* @prometheus_units_copy.initialized, align 4
  br label %51

51:                                               ; preds = %50, %20
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @simple_hash(i8* %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %93, %51
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @prometheus_units_copy.units, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %96

62:                                               ; preds = %55
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @prometheus_units_copy.units, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @prometheus_units_copy.units, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %71, i8* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %70, %62
  %81 = phi i1 [ false, %62 ], [ %79, %70 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @prometheus_units_copy.units, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  store i8* %91, i8** %9, align 8
  br label %96

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %55

96:                                               ; preds = %85, %55
  br label %97

97:                                               ; preds = %96, %4
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %5, align 8
  store i8 95, i8* %98, align 1
  store i64 1, i64* %11, align 8
  br label %100

100:                                              ; preds = %123, %97
  %101 = load i8*, i8** %6, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %7, align 8
  %108 = icmp ult i64 %106, %107
  br label %109

109:                                              ; preds = %105, %100
  %110 = phi i1 [ false, %100 ], [ %108, %105 ]
  br i1 %110, label %111, label %130

111:                                              ; preds = %109
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  store i8 %113, i8* %14, align 1
  %114 = load i8, i8* %14, align 1
  %115 = call i32 @isalnum(i8 signext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** %5, align 8
  store i8 95, i8* %118, align 1
  br label %122

119:                                              ; preds = %111
  %120 = load i8, i8* %14, align 1
  %121 = load i8*, i8** %5, align 8
  store i8 %120, i8* %121, align 1
  br label %122

122:                                              ; preds = %119, %117
  br label %123

123:                                              ; preds = %122
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %5, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 8
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %11, align 8
  br label %100

130:                                              ; preds = %109
  %131 = load i64, i64* %11, align 8
  %132 = icmp eq i64 %131, 2
  br i1 %132, label %133, label %162

133:                                              ; preds = %130
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 37
  br i1 %138, label %139, label %162

139:                                              ; preds = %133
  store i64 0, i64* %11, align 8
  %140 = load i8*, i8** %10, align 8
  store i8* %140, i8** %5, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** %6, align 8
  br label %141

141:                                              ; preds = %158, %139
  %142 = load i8*, i8** %6, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp ult i64 %147, %148
  br label %150

150:                                              ; preds = %146, %141
  %151 = phi i1 [ false, %141 ], [ %149, %146 ]
  br i1 %151, label %152, label %161

152:                                              ; preds = %150
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %6, align 8
  %155 = load i8, i8* %153, align 1
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %5, align 8
  store i8 %155, i8* %156, align 1
  br label %158

158:                                              ; preds = %152
  %159 = load i64, i64* %11, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %11, align 8
  br label %141

161:                                              ; preds = %150
  br label %208

162:                                              ; preds = %133, %130
  %163 = load i64, i64* %11, align 8
  %164 = icmp ugt i64 %163, 3
  br i1 %164, label %165, label %207

165:                                              ; preds = %162
  %166 = load i8*, i8** %9, align 8
  %167 = load i64, i64* %11, align 8
  %168 = sub i64 %167, 3
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 47
  br i1 %172, label %173, label %207

173:                                              ; preds = %165
  %174 = load i8*, i8** %9, align 8
  %175 = load i64, i64* %11, align 8
  %176 = sub i64 %175, 2
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 115
  br i1 %180, label %181, label %207

181:                                              ; preds = %173
  %182 = load i64, i64* %11, align 8
  %183 = sub i64 %182, 2
  store i64 %183, i64* %11, align 8
  %184 = load i8*, i8** %5, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 -2
  store i8* %185, i8** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %6, align 8
  br label %186

186:                                              ; preds = %203, %181
  %187 = load i8*, i8** %6, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* %7, align 8
  %194 = icmp ult i64 %192, %193
  br label %195

195:                                              ; preds = %191, %186
  %196 = phi i1 [ false, %186 ], [ %194, %191 ]
  br i1 %196, label %197, label %206

197:                                              ; preds = %195
  %198 = load i8*, i8** %6, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %6, align 8
  %200 = load i8, i8* %198, align 1
  %201 = load i8*, i8** %5, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %5, align 8
  store i8 %200, i8* %201, align 1
  br label %203

203:                                              ; preds = %197
  %204 = load i64, i64* %11, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %11, align 8
  br label %186

206:                                              ; preds = %195
  br label %207

207:                                              ; preds = %206, %173, %165, %162
  br label %208

208:                                              ; preds = %207, %161
  %209 = load i8*, i8** %5, align 8
  store i8 0, i8* %209, align 1
  %210 = load i8*, i8** %10, align 8
  ret i8* %210
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @simple_hash(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @isalnum(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
