; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_new_basic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_new_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt_basic = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.module = type { i32, i32 }

@SymTagBaseType = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symt_basic* @symt_new_basic(%struct.module* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.symt_basic*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.symt_basic*, align 8
  store %struct.module* %0, %struct.module** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %4
  %14 = load %struct.module*, %struct.module** %6, align 8
  %15 = load i32, i32* @SymTagBaseType, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @symt_find_type_by_name(%struct.module* %14, i32 %15, i8* %16)
  %18 = inttoptr i64 %17 to %struct.symt_basic*
  store %struct.symt_basic* %18, %struct.symt_basic** %10, align 8
  %19 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %20 = icmp ne %struct.symt_basic* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %13
  %22 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %23 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %29 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  store %struct.symt_basic* %34, %struct.symt_basic** %5, align 8
  br label %78

35:                                               ; preds = %27, %21, %13
  br label %36

36:                                               ; preds = %35, %4
  %37 = load %struct.module*, %struct.module** %6, align 8
  %38 = getelementptr inbounds %struct.module, %struct.module* %37, i32 0, i32 1
  %39 = call %struct.symt_basic* @pool_alloc(i32* %38, i32 24)
  store %struct.symt_basic* %39, %struct.symt_basic** %10, align 8
  %40 = icmp ne %struct.symt_basic* %39, null
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  %42 = load i32, i32* @SymTagBaseType, align 4
  %43 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %44 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load %struct.module*, %struct.module** %6, align 8
  %50 = getelementptr inbounds %struct.module, %struct.module* %49, i32 0, i32 1
  %51 = load i8*, i8** %8, align 8
  %52 = call i32* @pool_strdup(i32* %50, i8* %51)
  %53 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %54 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load %struct.module*, %struct.module** %6, align 8
  %57 = getelementptr inbounds %struct.module, %struct.module* %56, i32 0, i32 0
  %58 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %59 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %58, i32 0, i32 3
  %60 = call i32 @hash_table_add(i32* %57, %struct.TYPE_4__* %59)
  br label %65

61:                                               ; preds = %41
  %62 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %63 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %61, %48
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %68 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %71 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.module*, %struct.module** %6, align 8
  %73 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  %74 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %73, i32 0, i32 2
  %75 = call i32 @symt_add_type(%struct.module* %72, %struct.TYPE_3__* %74)
  br label %76

76:                                               ; preds = %65, %36
  %77 = load %struct.symt_basic*, %struct.symt_basic** %10, align 8
  store %struct.symt_basic* %77, %struct.symt_basic** %5, align 8
  br label %78

78:                                               ; preds = %76, %33
  %79 = load %struct.symt_basic*, %struct.symt_basic** %5, align 8
  ret %struct.symt_basic* %79
}

declare dso_local i64 @symt_find_type_by_name(%struct.module*, i32, i8*) #1

declare dso_local %struct.symt_basic* @pool_alloc(i32*, i32) #1

declare dso_local i32* @pool_strdup(i32*, i8*) #1

declare dso_local i32 @hash_table_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @symt_add_type(%struct.module*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
