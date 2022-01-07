; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_send_symbol.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_send_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_enum = type { i64, i64, i64, i32, %struct.TYPE_3__*, i32 (%struct.TYPE_3__*, i64, i32)* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.module_pair = type { i32 }
%struct.symt_function = type { i32 }
%struct.symt = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_enum*, %struct.module_pair*, %struct.symt_function*, %struct.symt*)* @send_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_symbol(%struct.sym_enum* %0, %struct.module_pair* %1, %struct.symt_function* %2, %struct.symt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sym_enum*, align 8
  %7 = alloca %struct.module_pair*, align 8
  %8 = alloca %struct.symt_function*, align 8
  %9 = alloca %struct.symt*, align 8
  store %struct.sym_enum* %0, %struct.sym_enum** %6, align 8
  store %struct.module_pair* %1, %struct.module_pair** %7, align 8
  store %struct.symt_function* %2, %struct.symt_function** %8, align 8
  store %struct.symt* %3, %struct.symt** %9, align 8
  %10 = load %struct.module_pair*, %struct.module_pair** %7, align 8
  %11 = load %struct.symt_function*, %struct.symt_function** %8, align 8
  %12 = load %struct.symt*, %struct.symt** %9, align 8
  %13 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %14 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @symt_fill_sym_info(%struct.module_pair* %10, %struct.symt_function* %11, %struct.symt* %12, %struct.TYPE_3__* %15)
  %17 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %18 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %23 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %28 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %5, align 4
  br label %102

33:                                               ; preds = %21, %4
  %34 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %35 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %40 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %45 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %5, align 4
  br label %102

50:                                               ; preds = %38, %33
  %51 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %52 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %57 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %60 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %59, i32 0, i32 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %58, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %55
  %66 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %67 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %70 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %69, i32 0, i32 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %75 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %74, i32 0, i32 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = icmp slt i64 %68, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %65, %55
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %5, align 4
  br label %102

83:                                               ; preds = %65, %50
  %84 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %85 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %84, i32 0, i32 5
  %86 = load i32 (%struct.TYPE_3__*, i64, i32)*, i32 (%struct.TYPE_3__*, i64, i32)** %85, align 8
  %87 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %88 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %87, i32 0, i32 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %91 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %90, i32 0, i32 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.sym_enum*, %struct.sym_enum** %6, align 8
  %96 = getelementptr inbounds %struct.sym_enum, %struct.sym_enum* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %86(%struct.TYPE_3__* %89, i64 %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %83, %81, %48, %31
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @symt_fill_sym_info(%struct.module_pair*, %struct.symt_function*, %struct.symt*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
