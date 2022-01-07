; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_bKGD.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_bKGD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i64, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"in png_handle_bKGD\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing IHDR before bKGD\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid bKGD after IDAT\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Missing PLTE before bKGD\00", align 1
@PNG_INFO_bKGD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Duplicate bKGD chunk\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Incorrect bKGD chunk length\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Incorrect bKGD chunk index value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_bKGD(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i64], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = call i32 @png_error(%struct.TYPE_14__* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = call i32 @png_warning(%struct.TYPE_14__* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @png_crc_finish(%struct.TYPE_14__* %29, i32 %30)
  br label %217

32:                                               ; preds = %19
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = call i32 @png_warning(%struct.TYPE_14__* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @png_crc_finish(%struct.TYPE_14__* %48, i32 %49)
  br label %217

51:                                               ; preds = %38, %32
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PNG_INFO_bKGD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = call i32 @png_warning(%struct.TYPE_14__* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @png_crc_finish(%struct.TYPE_14__* %64, i32 %65)
  br label %217

67:                                               ; preds = %54, %51
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %16
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %7, align 4
  br label %87

77:                                               ; preds = %70
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 6, i32* %7, align 4
  br label %86

85:                                               ; preds = %77
  store i32 2, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %76
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = call i32 @png_warning(%struct.TYPE_14__* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @png_crc_finish(%struct.TYPE_14__* %94, i32 %95)
  br label %217

97:                                               ; preds = %87
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @png_crc_read(%struct.TYPE_14__* %98, i64* %99, i32 %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = call i64 @png_crc_finish(%struct.TYPE_14__* %102, i32 0)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %217

106:                                              ; preds = %97
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %170

112:                                              ; preds = %106
  %113 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %114 = load i64, i64* %113, align 16
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %169

122:                                              ; preds = %112
  %123 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %124 = load i64, i64* %123, align 16
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ugt i64 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = call i32 @png_warning(%struct.TYPE_14__* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %217

132:                                              ; preds = %122
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %137 = load i64, i64* %136, align 16
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 3
  store i8* %141, i8** %144, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %149 = load i64, i64* %148, align 16
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  store i8* %153, i8** %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %161 = load i64, i64* %160, align 16
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  store i8* %165, i8** %168, align 8
  br label %169

169:                                              ; preds = %132, %112
  br label %211

170:                                              ; preds = %106
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %179 = call i8* @png_get_uint_16(i64* %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 4
  store i8* %179, i8** %182, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  store i8* %179, i8** %185, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  store i8* %179, i8** %188, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 3
  store i8* %179, i8** %191, align 8
  br label %210

192:                                              ; preds = %170
  %193 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %194 = call i8* @png_get_uint_16(i64* %193)
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 3
  store i8* %194, i8** %197, align 8
  %198 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %199 = getelementptr inbounds i64, i64* %198, i64 2
  %200 = call i8* @png_get_uint_16(i64* %199)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 2
  store i8* %200, i8** %203, align 8
  %204 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %205 = getelementptr inbounds i64, i64* %204, i64 4
  %206 = call i8* @png_get_uint_16(i64* %205)
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  store i8* %206, i8** %209, align 8
  br label %210

210:                                              ; preds = %192, %177
  br label %211

211:                                              ; preds = %210, %169
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 2
  %216 = call i32 @png_set_bKGD(%struct.TYPE_14__* %212, %struct.TYPE_15__* %213, %struct.TYPE_16__* %215)
  br label %217

217:                                              ; preds = %211, %129, %105, %91, %61, %45, %26
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_14__*, i64*, i32) #1

declare dso_local i8* @png_get_uint_16(i64*) #1

declare dso_local i32 @png_set_bKGD(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
