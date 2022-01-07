; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_f_getfree.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_f_getfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32, i32*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@FR_OK = common dso_local global i64 0, align 8
@FS_FAT12 = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i64 0, align 8
@FS_FAT16 = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_getfree(i32* %0, i32* %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %16 = call i64 @find_volume(i32** %5, %struct.TYPE_10__** %9, i32 0)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @FR_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %148

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 2
  %30 = icmp sle i32 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %147

36:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FS_FAT12, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  store i32 2, i32* %11, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %44, align 8
  br label %45

45:                                               ; preds = %64, %42
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @get_fat(%struct.TYPE_9__* %15, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %51, i64* %8, align 8
  br label %71

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %56, i64* %8, align 8
  br label %71

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %45, label %71

71:                                               ; preds = %64, %55, %50
  br label %137

72:                                               ; preds = %36
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %12, align 4
  store i64 0, i64* %14, align 8
  br label %79

79:                                               ; preds = %132, %72
  %80 = load i64, i64* %14, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = call i64 @move_window(%struct.TYPE_10__* %83, i32 %84)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @FR_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %136

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %79
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FS_FAT16, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %14, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = call i64 @ld_word(i32* %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %106, %98
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, 2
  store i64 %111, i64* %14, align 8
  br label %127

112:                                              ; preds = %92
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = call i32 @ld_dword(i32* %117)
  %119 = and i32 %118, 268435455
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %121, %112
  %125 = load i64, i64* %14, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %14, align 8
  br label %127

127:                                              ; preds = %124, %109
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = call i64 @SS(%struct.TYPE_10__* %128)
  %130 = load i64, i64* %14, align 8
  %131 = urem i64 %130, %129
  store i64 %131, i64* %14, align 8
  br label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %79, label %136

136:                                              ; preds = %132, %90
  br label %137

137:                                              ; preds = %136, %71
  %138 = load i32, i32* %10, align 4
  %139 = load i32*, i32** %6, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %137, %31
  br label %148

148:                                              ; preds = %147, %3
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %150 = load i64, i64* %8, align 8
  %151 = call i32 @LEAVE_FF(%struct.TYPE_10__* %149, i64 %150)
  %152 = load i64, i64* %4, align 8
  ret i64 %152
}

declare dso_local i64 @find_volume(i32**, %struct.TYPE_10__**, i32) #1

declare dso_local i32 @get_fat(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @move_window(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ld_word(i32*) #1

declare dso_local i32 @ld_dword(i32*) #1

declare dso_local i64 @SS(%struct.TYPE_10__*) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
