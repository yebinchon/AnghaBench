; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_iCCP.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_iCCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"in png_handle_iCCP\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing IHDR before iCCP\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid iCCP after IDAT\00", align 1
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Out of place iCCP chunk\00", align 1
@PNG_INFO_iCCP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Duplicate iCCP chunk\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Malformed iCCP chunk\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Ignoring nonzero compression type in iCCP chunk\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Profile size field missing from iCCP chunk\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Ignoring truncated iCCP profile.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_iCCP(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %11, align 8
  %17 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = call i32 @png_error(%struct.TYPE_14__* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %52

27:                                               ; preds = %3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = call i32 @png_warning(%struct.TYPE_14__* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @png_crc_finish(%struct.TYPE_14__* %37, i64 %38)
  br label %202

40:                                               ; preds = %27
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = call i32 @png_warning(%struct.TYPE_14__* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %24
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = icmp ne %struct.TYPE_15__* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PNG_INFO_iCCP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = call i32 @png_warning(%struct.TYPE_14__* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @png_crc_finish(%struct.TYPE_14__* %65, i64 %66)
  br label %202

68:                                               ; preds = %55, %52
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, 1
  %72 = call i64 @png_malloc(%struct.TYPE_14__* %69, i64 %71)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %7, align 8
  %74 = load i64, i64* %6, align 8
  store i64 %74, i64* %14, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @png_crc_read(%struct.TYPE_14__* %75, i32* %76, i64 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @png_crc_finish(%struct.TYPE_14__* %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %68
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @png_free(%struct.TYPE_14__* %84, i32* %85)
  br label %202

87:                                               ; preds = %68
  %88 = load i32*, i32** %7, align 8
  %89 = load i64, i64* %14, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 0, i32* %90, align 4
  %91 = load i32*, i32** %7, align 8
  store i32* %91, i32** %10, align 8
  br label %92

92:                                               ; preds = %97, %87
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %10, align 8
  br label %92

100:                                              ; preds = %92
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %10, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = getelementptr inbounds i32, i32* %106, i64 -1
  %108 = icmp uge i32* %103, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @png_free(%struct.TYPE_14__* %110, i32* %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = call i32 @png_warning(%struct.TYPE_14__* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %202

115:                                              ; preds = %100
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %10, align 8
  %118 = load i32, i32* %116, align 4
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = call i32 @png_warning(%struct.TYPE_14__* %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %121, %115
  %125 = load i32*, i32** %10, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = ptrtoint i32* %125 to i64
  %128 = ptrtoint i32* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 4
  store i64 %130, i64* %15, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %15, align 8
  %136 = call i32* @png_decompress_chunk(%struct.TYPE_14__* %131, i32 %132, i32* %133, i64 %134, i64 %135, i64* %16)
  store i32* %136, i32** %7, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* %15, align 8
  %139 = sub i64 %137, %138
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %16, align 8
  %142 = icmp ugt i64 %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %124
  %144 = load i64, i64* %13, align 8
  %145 = icmp slt i64 %144, 4
  br i1 %145, label %146, label %152

146:                                              ; preds = %143, %124
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @png_free(%struct.TYPE_14__* %147, i32* %148)
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %151 = call i32 @png_warning(%struct.TYPE_14__* %150, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %202

152:                                              ; preds = %143
  %153 = load i32*, i32** %7, align 8
  %154 = load i64, i64* %15, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %9, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 24
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 16
  %163 = or i32 %158, %162
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 8
  %168 = or i32 %163, %167
  %169 = load i32*, i32** %9, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %168, %171
  %173 = sext i32 %172 to i64
  store i64 %173, i64* %12, align 8
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* %13, align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %152
  %178 = load i64, i64* %12, align 8
  store i64 %178, i64* %13, align 8
  br label %179

179:                                              ; preds = %177, %152
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* %13, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %185 = load i32*, i32** %7, align 8
  %186 = call i32 @png_free(%struct.TYPE_14__* %184, i32* %185)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %188 = call i32 @png_warning(%struct.TYPE_14__* %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %202

189:                                              ; preds = %179
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = load i64, i64* %15, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i64, i64* %13, align 8
  %198 = call i32 @png_set_iCCP(%struct.TYPE_14__* %190, %struct.TYPE_15__* %191, i32* %192, i32 %193, i32* %196, i64 %197)
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = call i32 @png_free(%struct.TYPE_14__* %199, i32* %200)
  br label %202

202:                                              ; preds = %189, %183, %146, %109, %83, %62, %34
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @png_malloc(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_14__*, i32*, i64) #1

declare dso_local i32 @png_free(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @png_decompress_chunk(%struct.TYPE_14__*, i32, i32*, i64, i64, i64*) #1

declare dso_local i32 @png_set_iCCP(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
