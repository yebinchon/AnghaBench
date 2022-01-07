; ModuleID = '/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_f_getfree.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_f_getfree.c"
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
define dso_local i64 @f_getfree(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i64 @find_volume(%struct.TYPE_10__* %13, i32 0)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @FR_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %144

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 2
  %26 = icmp sle i32 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %143

32:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FS_FAT12, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  store i32 2, i32* %8, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %40, align 8
  br label %41

41:                                               ; preds = %60, %38
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @get_fat(%struct.TYPE_9__* %12, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %47, i64* %6, align 8
  br label %67

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %52, i64* %6, align 8
  br label %67

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %41, label %67

67:                                               ; preds = %60, %51, %46
  br label %133

68:                                               ; preds = %32
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %9, align 4
  store i64 0, i64* %11, align 8
  br label %75

75:                                               ; preds = %128, %68
  %76 = load i64, i64* %11, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = call i64 @move_window(%struct.TYPE_10__* %79, i32 %80)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @FR_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %132

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %75
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @FS_FAT16, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %88
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = call i64 @ld_word(i32* %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %94
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 2
  store i64 %107, i64* %11, align 8
  br label %123

108:                                              ; preds = %88
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = call i32 @ld_dword(i32* %113)
  %115 = and i32 %114, 268435455
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %117, %108
  %121 = load i64, i64* %11, align 8
  %122 = add i64 %121, 4
  store i64 %122, i64* %11, align 8
  br label %123

123:                                              ; preds = %120, %105
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = call i64 @SS(%struct.TYPE_10__* %124)
  %126 = load i64, i64* %11, align 8
  %127 = urem i64 %126, %125
  store i64 %127, i64* %11, align 8
  br label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %75, label %132

132:                                              ; preds = %128, %86
  br label %133

133:                                              ; preds = %132, %67
  %134 = load i32, i32* %7, align 4
  %135 = load i32*, i32** %5, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %133, %27
  br label %144

144:                                              ; preds = %143, %2
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = load i64, i64* %6, align 8
  %147 = call i32 @LEAVE_FF(%struct.TYPE_10__* %145, i64 %146)
  %148 = load i64, i64* %3, align 8
  ret i64 %148
}

declare dso_local i64 @find_volume(%struct.TYPE_10__*, i32) #1

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
