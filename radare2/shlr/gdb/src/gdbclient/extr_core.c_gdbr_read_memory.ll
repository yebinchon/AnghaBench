; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_read_memory.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_read_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbr_read_memory(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = call i32 @gdbr_lock_enter(%struct.TYPE_6__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %106

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %12, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  %26 = sub nsw i32 %21, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @gdbr_read_memory_page(%struct.TYPE_6__* %31, i32 %32, i32* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %106

36:                                               ; preds = %20
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @gdbr_read_memory_page(%struct.TYPE_6__* %37, i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %9, align 4
  br label %106

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %80, %46
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @gdbr_read_memory_page(%struct.TYPE_6__* %65, i32 %66, i32* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %106

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %106

80:                                               ; preds = %64
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %60

94:                                               ; preds = %60
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @gdbr_read_memory_page(%struct.TYPE_6__* %95, i32 %96, i32* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %106

102:                                              ; preds = %94
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %101, %76, %75, %44, %30, %19
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = call i32 @gdbr_lock_leave(%struct.TYPE_6__* %107)
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local i32 @gdbr_lock_enter(%struct.TYPE_6__*) #1

declare dso_local i32 @gdbr_read_memory_page(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @gdbr_lock_leave(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
