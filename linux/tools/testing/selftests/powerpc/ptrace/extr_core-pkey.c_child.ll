; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i64, i64, i64, i32, i32 }

@PKEY_DISABLE_EXECUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%-30s AMR: %016lx pkey1: %d pkey2: %d pkey3: %d\0A\00", align 1
@user_write = common dso_local global i8* null, align 8
@SPRN_AMR = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shared_info*)* @child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child(%struct.shared_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shared_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.shared_info* %0, %struct.shared_info** %3, align 8
  store i32 1, i32* %4, align 4
  %10 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %11 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %10, i32 0, i32 4
  %12 = call i32 @wait_parent(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %2, align 4
  br label %117

17:                                               ; preds = %1
  %18 = call i32 (...) @increase_core_file_limit()
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @FAIL_IF(i32 %19)
  %21 = load i32, i32* @PKEY_DISABLE_EXECUTE, align 4
  %22 = call i32 @sys_pkey_alloc(i32 0, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = call i32 @sys_pkey_alloc(i32 0, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @FAIL_IF(i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %17
  %32 = call i32 @sys_pkey_alloc(i32 0, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @FAIL_IF(i32 %35)
  %37 = call i32 @sys_pkey_alloc(i32 0, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @FAIL_IF(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @pkeyshift(i32 %42)
  %44 = shl i64 3, %43
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @pkeyshift(i32 %45)
  %47 = shl i64 2, %46
  %48 = or i64 %44, %47
  %49 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %50 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %31
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @pkeyshift(i32 %56)
  %58 = shl i64 1, %57
  %59 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %60 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = or i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %72

63:                                               ; preds = %31
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @pkeyshift(i32 %64)
  %66 = shl i64 1, %65
  %67 = xor i64 %66, -1
  %68 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %69 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %63, %55
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @pkeyshift(i32 %73)
  %75 = shl i64 1, %74
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @pkeyshift(i32 %76)
  %78 = shl i64 1, %77
  %79 = or i64 %75, %78
  %80 = xor i64 %79, -1
  %81 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %82 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = and i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @pkeyshift(i32 %85)
  %87 = shl i64 3, %86
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @pkeyshift(i32 %88)
  %90 = shl i64 3, %89
  %91 = or i64 %87, %90
  %92 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %93 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = or i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load i8*, i8** @user_write, align 8
  %97 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %98 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %96, i64 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* @SPRN_AMR, align 4
  %105 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %106 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @mtspr(i32 %104, i64 %107)
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @sys_pkey_free(i32 %109)
  %111 = call i32 @time(i32* null)
  %112 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %113 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  store i32* null, i32** %8, align 8
  %114 = load i32*, i32** %8, align 8
  store i32 1, i32* %114, align 4
  %115 = call i32 @FAIL_IF(i32 1)
  %116 = load i32, i32* @TEST_FAIL, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %72, %15
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @wait_parent(i32*) #1

declare dso_local i32 @increase_core_file_limit(...) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @sys_pkey_alloc(i32, i32) #1

declare dso_local i64 @pkeyshift(i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i32 @sys_pkey_free(i32) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
