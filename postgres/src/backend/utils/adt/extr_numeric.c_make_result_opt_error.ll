; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_make_result_opt_error.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_make_result_opt_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i64* }

@NUMERIC_NAN = common dso_local global i32 0, align 4
@NUMERIC_HDRSZ_SHORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"make_result()\00", align 1
@NUMERIC_POS = common dso_local global i32 0, align 4
@NUMERIC_NEG = common dso_local global i32 0, align 4
@NUMERIC_SHORT = common dso_local global i32 0, align 4
@NUMERIC_SHORT_SIGN_MASK = common dso_local global i32 0, align 4
@NUMERIC_SHORT_DSCALE_SHIFT = common dso_local global i32 0, align 4
@NUMERIC_SHORT_WEIGHT_SIGN_MASK = common dso_local global i32 0, align 4
@NUMERIC_SHORT_WEIGHT_MASK = common dso_local global i32 0, align 4
@NUMERIC_HDRSZ = common dso_local global i64 0, align 8
@NUMERIC_DSCALE_MASK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"value overflows numeric format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_17__*, i32*)* @make_result_opt_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @make_result_opt_error(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 4
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %7, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @NUMERIC_NAN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i64, i64* @NUMERIC_HDRSZ_SHORT, align 8
  %31 = call i64 @palloc(i64 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %6, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = load i64, i64* @NUMERIC_HDRSZ_SHORT, align 8
  %35 = call i32 @SET_VARSIZE(%struct.TYPE_18__* %33, i64 %34)
  %36 = load i32, i32* @NUMERIC_NAN, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = call i32 @dump_numeric(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %3, align 8
  br label %211

43:                                               ; preds = %25
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %56, %43
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = load i64*, i64** %7, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %10, align 4
  br label %47

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i64*, i64** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br label %75

75:                                               ; preds = %67, %64
  %76 = phi i1 [ false, %64 ], [ %74, %67 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %10, align 4
  br label %64

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  %84 = load i32, i32* @NUMERIC_POS, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @NUMERIC_CAN_BE_SHORT(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %137

92:                                               ; preds = %85
  %93 = load i64, i64* @NUMERIC_HDRSZ_SHORT, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 8
  %97 = add i64 %93, %96
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i64 @palloc(i64 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %6, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @SET_VARSIZE(%struct.TYPE_18__* %101, i64 %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @NUMERIC_NEG, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %92
  %108 = load i32, i32* @NUMERIC_SHORT, align 4
  %109 = load i32, i32* @NUMERIC_SHORT_SIGN_MASK, align 4
  %110 = or i32 %108, %109
  br label %113

111:                                              ; preds = %92
  %112 = load i32, i32* @NUMERIC_SHORT, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i32 [ %110, %107 ], [ %112, %111 ]
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @NUMERIC_SHORT_DSCALE_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = or i32 %114, %119
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* @NUMERIC_SHORT_WEIGHT_SIGN_MASK, align 4
  br label %126

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  %128 = or i32 %120, %127
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @NUMERIC_SHORT_WEIGHT_MASK, align 4
  %131 = and i32 %129, %130
  %132 = or i32 %128, %131
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  br label %165

137:                                              ; preds = %85
  %138 = load i64, i64* @NUMERIC_HDRSZ, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 8
  %142 = add i64 %138, %141
  store i64 %142, i64* %11, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i64 @palloc(i64 %143)
  %145 = inttoptr i64 %144 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %145, %struct.TYPE_18__** %6, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @SET_VARSIZE(%struct.TYPE_18__* %146, i64 %147)
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @NUMERIC_DSCALE_MASK, align 4
  %154 = and i32 %152, %153
  %155 = or i32 %149, %154
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  store i32 %160, i32* %164, align 4
  br label %165

165:                                              ; preds = %137, %126
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = call i32 @NUMERIC_NDIGITS(%struct.TYPE_18__* %166)
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @Assert(i32 %170)
  %172 = load i32, i32* %10, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %165
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %176 = call i32 @NUMERIC_DIGITS(%struct.TYPE_18__* %175)
  %177 = load i64*, i64** %7, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @memcpy(i32 %176, i64* %177, i32 %181)
  br label %183

183:                                              ; preds = %174, %165
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %185 = call i32 @NUMERIC_WEIGHT(%struct.TYPE_18__* %184)
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %195, label %188

188:                                              ; preds = %183
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %190 = call i32 @NUMERIC_DSCALE(%struct.TYPE_18__* %189)
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %190, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %188, %183
  %196 = load i32*, i32** %5, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i32*, i32** %5, align 8
  store i32 1, i32* %199, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %211

200:                                              ; preds = %195
  %201 = load i32, i32* @ERROR, align 4
  %202 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %203 = call i32 @errcode(i32 %202)
  %204 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %205 = call i32 @ereport(i32 %201, i32 %204)
  br label %206

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206, %188
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %209 = call i32 @dump_numeric(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %208)
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %210, %struct.TYPE_18__** %3, align 8
  br label %211

211:                                              ; preds = %207, %198, %29
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %212
}

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @dump_numeric(i8*, %struct.TYPE_18__*) #1

declare dso_local i64 @NUMERIC_CAN_BE_SHORT(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @NUMERIC_NDIGITS(%struct.TYPE_18__*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @NUMERIC_DIGITS(%struct.TYPE_18__*) #1

declare dso_local i32 @NUMERIC_WEIGHT(%struct.TYPE_18__*) #1

declare dso_local i32 @NUMERIC_DSCALE(%struct.TYPE_18__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
