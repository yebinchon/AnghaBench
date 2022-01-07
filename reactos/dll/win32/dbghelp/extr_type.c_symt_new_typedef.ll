; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_new_typedef.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_new_typedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt_typedef = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.symt* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.module = type { i32, i32 }
%struct.symt = type { i32 }

@SymTagTypedef = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symt_typedef* @symt_new_typedef(%struct.module* %0, %struct.symt* %1, i8* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.symt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.symt_typedef*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.symt* %1, %struct.symt** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.module*, %struct.module** %4, align 8
  %9 = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 1
  %10 = call %struct.symt_typedef* @pool_alloc(i32* %9, i32 16)
  store %struct.symt_typedef* %10, %struct.symt_typedef** %7, align 8
  %11 = icmp ne %struct.symt_typedef* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load i32, i32* @SymTagTypedef, align 4
  %14 = load %struct.symt_typedef*, %struct.symt_typedef** %7, align 8
  %15 = getelementptr inbounds %struct.symt_typedef, %struct.symt_typedef* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.symt*, %struct.symt** %5, align 8
  %18 = load %struct.symt_typedef*, %struct.symt_typedef** %7, align 8
  %19 = getelementptr inbounds %struct.symt_typedef, %struct.symt_typedef* %18, i32 0, i32 2
  store %struct.symt* %17, %struct.symt** %19, align 8
  %20 = load %struct.module*, %struct.module** %4, align 8
  %21 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 1
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @pool_strdup(i32* %21, i8* %22)
  %24 = load %struct.symt_typedef*, %struct.symt_typedef** %7, align 8
  %25 = getelementptr inbounds %struct.symt_typedef, %struct.symt_typedef* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.module*, %struct.module** %4, align 8
  %28 = getelementptr inbounds %struct.module, %struct.module* %27, i32 0, i32 0
  %29 = load %struct.symt_typedef*, %struct.symt_typedef** %7, align 8
  %30 = getelementptr inbounds %struct.symt_typedef, %struct.symt_typedef* %29, i32 0, i32 1
  %31 = call i32 @hash_table_add(i32* %28, %struct.TYPE_4__* %30)
  %32 = load %struct.module*, %struct.module** %4, align 8
  %33 = load %struct.symt_typedef*, %struct.symt_typedef** %7, align 8
  %34 = getelementptr inbounds %struct.symt_typedef, %struct.symt_typedef* %33, i32 0, i32 0
  %35 = call i32 @symt_add_type(%struct.module* %32, %struct.TYPE_3__* %34)
  br label %36

36:                                               ; preds = %12, %3
  %37 = load %struct.symt_typedef*, %struct.symt_typedef** %7, align 8
  ret %struct.symt_typedef* %37
}

declare dso_local %struct.symt_typedef* @pool_alloc(i32*, i32) #1

declare dso_local i32 @pool_strdup(i32*, i8*) #1

declare dso_local i32 @hash_table_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @symt_add_type(%struct.module*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
