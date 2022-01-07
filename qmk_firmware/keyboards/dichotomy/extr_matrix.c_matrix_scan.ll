; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dichotomy/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dichotomy/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@SERIAL_UART_DATA = common dso_local global i32 0, align 4
@SERIAL_UART_RXD_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\0D\0ATime out in keyboard.\00", align 1
@MAIN_ROWMASK = common dso_local global i32 0, align 4
@matrix = common dso_local global i32* null, align 8
@LOWER_ROWMASK = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [11 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = call i32 (...) @SERIAL_UART_INIT()
  store i32 0, i32* %1, align 4
  store i32 115, i32* @SERIAL_UART_DATA, align 4
  %10 = bitcast [11 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 44, i1 false)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %32, %0
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 11
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i32, i32* @SERIAL_UART_RXD_PRESENT, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp sgt i32 %22, 10000
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @xprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %27

26:                                               ; preds = %19
  br label %15

27:                                               ; preds = %24, %15
  %28 = load i32, i32* @SERIAL_UART_DATA, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %11

35:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %40, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %36

49:                                               ; preds = %36
  %50 = load i32, i32* %4, align 4
  %51 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 10
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 240
  %54 = xor i32 %50, %53
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 240
  %58 = ashr i32 %57, 4
  %59 = xor i32 %55, %58
  %60 = and i32 %59, 15
  store i32 %60, i32* %4, align 4
  %61 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 10
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 15
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %173

66:                                               ; preds = %49
  %67 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = shl i32 %68, 8
  %70 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %69, %71
  %73 = load i32, i32* @MAIN_ROWMASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32*, i32** @matrix, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 12
  %80 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 2
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %81, 4
  %83 = or i32 %79, %82
  %84 = load i32*, i32** @matrix, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 4
  %90 = load i32, i32* %89, align 16
  %91 = or i32 %88, %90
  %92 = load i32, i32* @MAIN_ROWMASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32*, i32** @matrix, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 4
  %97 = load i32, i32* %96, align 16
  %98 = shl i32 %97, 9
  %99 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 1
  %102 = or i32 %98, %101
  %103 = load i32, i32* @LOWER_ROWMASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32*, i32** @matrix, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 5
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 7
  %110 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 10
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = shl i32 %115, 13
  %117 = or i32 %109, %116
  %118 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 10
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 64
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 0
  %124 = shl i32 %123, 6
  %125 = or i32 %117, %124
  %126 = load i32, i32* @LOWER_ROWMASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32*, i32** @matrix, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  store i32 %127, i32* %129, align 4
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %145, %66
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @MATRIX_ROWS, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load i32*, i32** @matrix, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @bitrev16(i32 %139)
  %141 = load i32*, i32** @matrix, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %134
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %130

148:                                              ; preds = %130
  %149 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %149, i8 0, i64 32, i1 false)
  call void (%struct.TYPE_4__*, ...) @pointing_device_get_report(%struct.TYPE_4__* sret %8)
  %150 = bitcast %struct.TYPE_4__* %7 to i8*
  %151 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 32, i1 false)
  %152 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 6
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i8* %155, i8** %156, align 8
  %157 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 7
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i8* %160, i8** %161, align 8
  %162 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 8
  %163 = load i32, i32* %162, align 16
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i8* %165, i8** %166, align 8
  %167 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 9
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %170, i8** %171, align 8
  %172 = call i32 @pointing_device_set_report(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %7)
  br label %174

173:                                              ; preds = %49
  br label %174

174:                                              ; preds = %173, %148
  %175 = call i32 (...) @matrix_scan_quantum()
  ret i32 1
}

declare dso_local i32 @SERIAL_UART_INIT(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @xprintf(i8*) #1

declare dso_local i32 @bitrev16(i32) #1

declare dso_local void @pointing_device_get_report(%struct.TYPE_4__* sret, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pointing_device_set_report(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
