; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_read_blocklist.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_read_blocklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_blocklist_closure = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@GRUB_DISK_SECTOR_BITS = common dso_local global i64 0, align 8
@BLOCKLIST_INC_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i8*)* @read_blocklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_blocklist(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.read_blocklist_closure*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.read_blocklist_closure*
  store %struct.read_blocklist_closure* %11, %struct.read_blocklist_closure** %9, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %14 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = load i64, i64* @GRUB_DISK_SECTOR_BITS, align 8
  %18 = shl i64 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  store i64 %21, i64* %5, align 8
  %22 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %23 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %4
  %27 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %28 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %31 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %39 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %42 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %37, %48
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %26
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %56 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %59 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %54
  store i64 %66, i64* %64, align 8
  br label %122

67:                                               ; preds = %26, %4
  %68 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %69 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BLOCKLIST_INC_STEP, align 4
  %72 = sub nsw i32 %71, 1
  %73 = and i32 %70, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %67
  %76 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %77 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %80 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BLOCKLIST_INC_STEP, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call %struct.TYPE_3__* @grub_realloc(%struct.TYPE_3__* %78, i32 %86)
  %88 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %89 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %88, i32 0, i32 3
  store %struct.TYPE_3__* %87, %struct.TYPE_3__** %89, align 8
  %90 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %91 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = icmp ne %struct.TYPE_3__* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %75
  br label %128

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95, %67
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %99 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %102 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i64 %97, i64* %106, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %110 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %109, i32 0, i32 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %113 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i64 %108, i64* %117, align 8
  %118 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %119 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %96, %52
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.read_blocklist_closure*, %struct.read_blocklist_closure** %9, align 8
  %125 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %94
  ret void
}

declare dso_local %struct.TYPE_3__* @grub_realloc(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
