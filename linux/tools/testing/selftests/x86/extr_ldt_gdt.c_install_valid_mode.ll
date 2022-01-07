; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_install_valid_mode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_install_valid_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_desc = type { i32, i64, i64, i64 }

@SYS_modify_ldt = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[OK]\09modify_ldt returned -ENOSYS\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"[FAIL]\09Unexpected %s failure %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"modify_ldt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"set_thread_area\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"[OK]\09%s rejected 16 bit segment\0A\00", align 1
@SYS_set_thread_area = common dso_local global i32 0, align 4
@gdt_entry_num = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_desc*, i32, i32, i32)* @install_valid_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_valid_mode(%struct.user_desc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.user_desc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.user_desc* %0, %struct.user_desc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.user_desc*, %struct.user_desc** %6, align 8
  %14 = bitcast %struct.user_desc* %10 to i8*
  %15 = bitcast %struct.user_desc* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 32, i1 false)
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %80

19:                                               ; preds = %4
  %20 = load i32, i32* @SYS_modify_ldt, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 17
  %25 = call i32 (i32, ...) @syscall(i32 %20, i32 %24, %struct.user_desc* %10, i64 32)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* @errno, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @errno, align 4
  %36 = load i32, i32* @ENOSYS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %80

40:                                               ; preds = %34, %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %12, align 4
  %47 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %10, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 %51, 12
  %53 = add nsw i32 %52, 4095
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %10, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @check_valid_segment(i64 %56, i32 %57, i32 %58, i32 %59, i32 1)
  store i32 1, i32* %5, align 4
  br label %80

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 %70)
  %72 = load i32, i32* @nerrs, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @nerrs, align 4
  store i32 0, i32* %5, align 4
  br label %80

74:                                               ; preds = %61
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %65, %54, %38, %18
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @syscall(i32, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @check_valid_segment(i64, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
