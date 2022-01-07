; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DetermineTimeZoneOffsetInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DetermineTimeZoneOffsetInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32, i32, i32, i32, i32 }

@UNIX_EPOCH_JDATE = common dso_local global i32 0, align 4
@SECS_PER_DAY = common dso_local global i32 0, align 4
@MINS_PER_HOUR = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pg_tm*, i32*, i32*)* @DetermineTimeZoneOffsetInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DetermineTimeZoneOffsetInternal(%struct.pg_tm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pg_tm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pg_tm* %0, %struct.pg_tm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %22 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %25 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %28 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IS_VALID_JULIAN(i32 %23, i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  br label %216

33:                                               ; preds = %3
  %34 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %35 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %38 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %41 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @date2j(i32 %36, i32 %39, i32 %42)
  %44 = load i32, i32* @UNIX_EPOCH_JDATE, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SECS_PER_DAY, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @SECS_PER_DAY, align 4
  %51 = sdiv i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  br label %216

55:                                               ; preds = %33
  %56 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %57 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %60 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %63 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MINS_PER_HOUR, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %61, %66
  %68 = load i32, i32* @SECS_PER_MINUTE, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %58, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %55
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %216

80:                                               ; preds = %76, %55
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @SECS_PER_DAY, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %216

90:                                               ; preds = %86, %80
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @pg_next_dst_boundary(i32* %12, i64* %16, i32* %18, i32* %13, i64* %17, i32* %19, i32* %91)
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %216

96:                                               ; preds = %90
  %97 = load i32, i32* %20, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %102 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %16, align 8
  %106 = sub nsw i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i64, i64* %16, align 8
  %110 = trunc i64 %109 to i32
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %220

112:                                              ; preds = %96
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %16, align 8
  %116 = sub nsw i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %14, align 4
  %118 = load i64, i64* %16, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %14, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %123, %120, %112
  %127 = load i64, i64* %16, align 8
  %128 = icmp sle i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* %14, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132, %123
  br label %216

136:                                              ; preds = %132, %129, %126
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %17, align 8
  %140 = sub nsw i64 %138, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %15, align 4
  %142 = load i64, i64* %17, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %15, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %147, %144, %136
  %151 = load i64, i64* %17, align 8
  %152 = icmp sle i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156, %147
  br label %216

160:                                              ; preds = %156, %153, %150
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i32, i32* %18, align 4
  %170 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %171 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load i32*, i32** %7, align 8
  store i32 %172, i32* %173, align 4
  %174 = load i64, i64* %16, align 8
  %175 = trunc i64 %174 to i32
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  br label %220

177:                                              ; preds = %164, %160
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %194

181:                                              ; preds = %177
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %181
  %186 = load i32, i32* %19, align 4
  %187 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %188 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load i32*, i32** %7, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i64, i64* %17, align 8
  %192 = trunc i64 %191 to i32
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %220

194:                                              ; preds = %181, %177
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %15, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %194
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %201 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %14, align 4
  %203 = load i32*, i32** %7, align 8
  store i32 %202, i32* %203, align 4
  %204 = load i64, i64* %16, align 8
  %205 = trunc i64 %204 to i32
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %220

207:                                              ; preds = %194
  %208 = load i32, i32* %19, align 4
  %209 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %210 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* %15, align 4
  %212 = load i32*, i32** %7, align 8
  store i32 %211, i32* %212, align 4
  %213 = load i64, i64* %17, align 8
  %214 = trunc i64 %213 to i32
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %4, align 4
  br label %220

216:                                              ; preds = %159, %135, %95, %89, %79, %54, %32
  %217 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %218 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %217, i32 0, i32 3
  store i32 0, i32* %218, align 4
  %219 = load i32*, i32** %7, align 8
  store i32 0, i32* %219, align 4
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %216, %207, %198, %185, %168, %99
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @IS_VALID_JULIAN(i32, i32, i32) #1

declare dso_local i32 @date2j(i32, i32, i32) #1

declare dso_local i32 @pg_next_dst_boundary(i32*, i64*, i32*, i32*, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
