; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_new_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_new_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt_enum = type { i32, %struct.symt*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.module = type { i32 }
%struct.symt = type { i32 }

@SymTagEnum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symt_enum* @symt_new_enum(%struct.module* %0, i8* %1, %struct.symt* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.symt*, align 8
  %7 = alloca %struct.symt_enum*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.symt* %2, %struct.symt** %6, align 8
  %8 = load %struct.module*, %struct.module** %4, align 8
  %9 = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 0
  %10 = call %struct.symt_enum* @pool_alloc(i32* %9, i32 32)
  store %struct.symt_enum* %10, %struct.symt_enum** %7, align 8
  %11 = icmp ne %struct.symt_enum* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load i32, i32* @SymTagEnum, align 4
  %14 = load %struct.symt_enum*, %struct.symt_enum** %7, align 8
  %15 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.module*, %struct.module** %4, align 8
  %21 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 0
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @pool_strdup(i32* %21, i8* %22)
  br label %25

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i32* [ %23, %19 ], [ null, %24 ]
  %27 = load %struct.symt_enum*, %struct.symt_enum** %7, align 8
  %28 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.symt*, %struct.symt** %6, align 8
  %30 = load %struct.symt_enum*, %struct.symt_enum** %7, align 8
  %31 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %30, i32 0, i32 1
  store %struct.symt* %29, %struct.symt** %31, align 8
  %32 = load %struct.symt_enum*, %struct.symt_enum** %7, align 8
  %33 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %32, i32 0, i32 0
  %34 = call i32 @vector_init(i32* %33, i32 8, i32 8)
  br label %35

35:                                               ; preds = %25, %3
  %36 = load %struct.symt_enum*, %struct.symt_enum** %7, align 8
  ret %struct.symt_enum* %36
}

declare dso_local %struct.symt_enum* @pool_alloc(i32*, i32) #1

declare dso_local i32* @pool_strdup(i32*, i8*) #1

declare dso_local i32 @vector_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
