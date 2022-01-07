; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inleap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inleap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lookup = type { i32 }

@LEAP_FIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"wrong number of fields on Leap line\00", align 1
@LP_YEAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid leaping year\00", align 1
@leapseen = common dso_local global i32 0, align 4
@leapmaxyear = common dso_local global i32 0, align 4
@leapminyear = common dso_local global i32 0, align 4
@EPOCH_YEAR = common dso_local global i32 0, align 4
@len_years = common dso_local global i32* null, align 8
@LP_MONTH = common dso_local global i64 0, align 8
@mon_names = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid month name\00", align 1
@TM_JANUARY = common dso_local global i32 0, align 4
@len_months = common dso_local global i32** null, align 8
@LP_DAY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid day of month\00", align 1
@min_time = common dso_local global i32 0, align 4
@SECSPERDAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"time too small\00", align 1
@max_time = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"time too large\00", align 1
@LP_TIME = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"invalid time of day\00", align 1
@LP_CORR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"illegal CORRECTION field on Leap line\00", align 1
@LP_ROLL = common dso_local global i64 0, align 8
@leap_types = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"illegal Rolling/Stationary field on Leap line\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"leap second precedes Epoch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @inleap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inleap(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lookup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LEAP_FIELDS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @error(i32 %22)
  br label %222

24:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  %25 = load i8**, i8*** %3, align 8
  %26 = load i64, i64* @LP_YEAR, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %9, i8* %15)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @error(i32 %33)
  br label %222

35:                                               ; preds = %24
  %36 = load i32, i32* @leapseen, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @leapmaxyear, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* @leapmaxyear, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* @leapseen, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @leapminyear, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* @leapminyear, align 4
  br label %53

53:                                               ; preds = %51, %47
  store i32 1, i32* @leapseen, align 4
  %54 = load i32, i32* @EPOCH_YEAR, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %80, %53
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32*, i32** @len_years, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @isleap(i32 %65)
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %80

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = load i32*, i32** @len_years, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @isleap(i32 %75)
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %71, %63
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @oadd(i32 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  br label %55

84:                                               ; preds = %55
  %85 = load i8**, i8*** %3, align 8
  %86 = load i64, i64* @LP_MONTH, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @mon_names, align 4
  %90 = call %struct.lookup* @byword(i8* %88, i32 %89)
  store %struct.lookup* %90, %struct.lookup** %6, align 8
  %91 = icmp eq %struct.lookup* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %94 = call i32 @error(i32 %93)
  br label %222

95:                                               ; preds = %84
  %96 = load %struct.lookup*, %struct.lookup** %6, align 8
  %97 = getelementptr inbounds %struct.lookup, %struct.lookup* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* @TM_JANUARY, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %104, %95
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load i32**, i32*** @len_months, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i64 @isleap(i32 %106)
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @oadd(i32 %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %100

119:                                              ; preds = %100
  %120 = load i8**, i8*** %3, align 8
  %121 = load i64, i64* @LP_DAY, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %5, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @sscanf(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %11, i8* %15)
  %126 = icmp ne i32 %125, 1
  br i1 %126, label %142, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %11, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = load i32**, i32*** @len_months, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @isleap(i32 %133)
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %131, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %130, %127, %119
  %143 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %144 = call i32 @error(i32 %143)
  br label %222

145:                                              ; preds = %130
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %11, align 4
  %148 = sub nsw i32 %147, 1
  %149 = call i32 @oadd(i32 %146, i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @min_time, align 4
  %152 = load i32, i32* @SECSPERDAY, align 4
  %153 = sdiv i32 %151, %152
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  %156 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %157 = call i32 @error(i32 %156)
  br label %222

158:                                              ; preds = %145
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @max_time, align 4
  %161 = load i32, i32* @SECSPERDAY, align 4
  %162 = sdiv i32 %160, %161
  %163 = icmp sgt i32 %159, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %166 = call i32 @error(i32 %165)
  br label %222

167:                                              ; preds = %158
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @SECSPERDAY, align 4
  %170 = mul nsw i32 %168, %169
  store i32 %170, i32* %14, align 4
  %171 = load i8**, i8*** %3, align 8
  %172 = load i64, i64* @LP_TIME, align 8
  %173 = getelementptr inbounds i8*, i8** %171, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %176 = call i32 @gethms(i8* %174, i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load i8**, i8*** %3, align 8
  %178 = load i64, i64* @LP_CORR, align 8
  %179 = getelementptr inbounds i8*, i8** %177, i64 %178
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %5, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = call i64 @strcmp(i8* %181, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %167
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %194

185:                                              ; preds = %167
  %186 = load i8*, i8** %5, align 8
  %187 = call i64 @strcmp(i8* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %193

190:                                              ; preds = %185
  %191 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %192 = call i32 @error(i32 %191)
  br label %222

193:                                              ; preds = %189
  br label %194

194:                                              ; preds = %193, %184
  %195 = load i8**, i8*** %3, align 8
  %196 = load i64, i64* @LP_ROLL, align 8
  %197 = getelementptr inbounds i8*, i8** %195, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* @leap_types, align 4
  %200 = call %struct.lookup* @byword(i8* %198, i32 %199)
  store %struct.lookup* %200, %struct.lookup** %6, align 8
  %201 = icmp eq %struct.lookup* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %204 = call i32 @error(i32 %203)
  br label %222

205:                                              ; preds = %194
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @tadd(i32 %206, i32 %207)
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %213 = call i32 @error(i32 %212)
  br label %222

214:                                              ; preds = %205
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %16, align 4
  %217 = load %struct.lookup*, %struct.lookup** %6, align 8
  %218 = getelementptr inbounds %struct.lookup, %struct.lookup* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %17, align 4
  %221 = call i32 @leapadd(i32 %215, i32 %216, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %214, %211, %202, %190, %164, %155, %142, %92, %32, %21
  ret void
}

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i64 @isleap(i32) #1

declare dso_local i32 @oadd(i32, i32) #1

declare dso_local %struct.lookup* @byword(i8*, i32) #1

declare dso_local i32 @gethms(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @tadd(i32, i32) #1

declare dso_local i32 @leapadd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
