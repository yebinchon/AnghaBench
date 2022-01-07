; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_create_vm_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_create_vm_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_stats_debugfs_item = type { i32, i64, i64, i32 }
%struct.kvm = type { i32, %struct.kvm_stat_data** }
%struct.kvm_stat_data = type { i32, i32, %struct.kvm* }

@ITOA_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@current = common dso_local global i32 0, align 4
@kvm_debugfs_dir = common dso_local global i32 0, align 4
@kvm_debugfs_num_entries = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@debugfs_entries = common dso_local global %struct.kvm_stats_debugfs_item* null, align 8
@stat_fops_per_vm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32)* @kvm_create_vm_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_create_vm_debugfs(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_stat_data*, align 8
  %9 = alloca %struct.kvm_stats_debugfs_item*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @ITOA_MAX_LEN, align 4
  %12 = mul nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = call i32 (...) @debugfs_initialized()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %110

19:                                               ; preds = %2
  %20 = trunc i64 %13 to i32
  %21 = load i32, i32* @current, align 4
  %22 = call i32 @task_pid_nr(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @snprintf(i8* %15, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @kvm_debugfs_dir, align 4
  %26 = call i32 @debugfs_create_dir(i8* %15, i32 %25)
  %27 = load %struct.kvm*, %struct.kvm** %4, align 8
  %28 = getelementptr inbounds %struct.kvm, %struct.kvm* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @kvm_debugfs_num_entries, align 4
  %30 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %31 = call %struct.kvm_stat_data** @kcalloc(i32 %29, i32 8, i32 %30)
  %32 = load %struct.kvm*, %struct.kvm** %4, align 8
  %33 = getelementptr inbounds %struct.kvm, %struct.kvm* %32, i32 0, i32 1
  store %struct.kvm_stat_data** %31, %struct.kvm_stat_data*** %33, align 8
  %34 = load %struct.kvm*, %struct.kvm** %4, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 1
  %36 = load %struct.kvm_stat_data**, %struct.kvm_stat_data*** %35, align 8
  %37 = icmp ne %struct.kvm_stat_data** %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %19
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %110

41:                                               ; preds = %19
  %42 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** @debugfs_entries, align 8
  store %struct.kvm_stats_debugfs_item* %42, %struct.kvm_stats_debugfs_item** %9, align 8
  br label %43

43:                                               ; preds = %106, %41
  %44 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %9, align 8
  %45 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %109

48:                                               ; preds = %43
  %49 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %50 = call %struct.kvm_stat_data* @kzalloc(i32 16, i32 %49)
  store %struct.kvm_stat_data* %50, %struct.kvm_stat_data** %8, align 8
  %51 = load %struct.kvm_stat_data*, %struct.kvm_stat_data** %8, align 8
  %52 = icmp ne %struct.kvm_stat_data* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %110

56:                                               ; preds = %48
  %57 = load %struct.kvm*, %struct.kvm** %4, align 8
  %58 = load %struct.kvm_stat_data*, %struct.kvm_stat_data** %8, align 8
  %59 = getelementptr inbounds %struct.kvm_stat_data, %struct.kvm_stat_data* %58, i32 0, i32 2
  store %struct.kvm* %57, %struct.kvm** %59, align 8
  %60 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %9, align 8
  %61 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.kvm_stat_data*, %struct.kvm_stat_data** %8, align 8
  %64 = getelementptr inbounds %struct.kvm_stat_data, %struct.kvm_stat_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %9, align 8
  %66 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %9, align 8
  %71 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  br label %74

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32 [ %72, %69 ], [ 420, %73 ]
  %76 = load %struct.kvm_stat_data*, %struct.kvm_stat_data** %8, align 8
  %77 = getelementptr inbounds %struct.kvm_stat_data, %struct.kvm_stat_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.kvm_stat_data*, %struct.kvm_stat_data** %8, align 8
  %79 = load %struct.kvm*, %struct.kvm** %4, align 8
  %80 = getelementptr inbounds %struct.kvm, %struct.kvm* %79, i32 0, i32 1
  %81 = load %struct.kvm_stat_data**, %struct.kvm_stat_data*** %80, align 8
  %82 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %9, align 8
  %83 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** @debugfs_entries, align 8
  %84 = ptrtoint %struct.kvm_stats_debugfs_item* %82 to i64
  %85 = ptrtoint %struct.kvm_stats_debugfs_item* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 32
  %88 = getelementptr inbounds %struct.kvm_stat_data*, %struct.kvm_stat_data** %81, i64 %87
  store %struct.kvm_stat_data* %78, %struct.kvm_stat_data** %88, align 8
  %89 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %9, align 8
  %90 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.kvm_stat_data*, %struct.kvm_stat_data** %8, align 8
  %93 = getelementptr inbounds %struct.kvm_stat_data, %struct.kvm_stat_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.kvm*, %struct.kvm** %4, align 8
  %96 = getelementptr inbounds %struct.kvm, %struct.kvm* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.kvm_stat_data*, %struct.kvm_stat_data** %8, align 8
  %99 = load i32*, i32** @stat_fops_per_vm, align 8
  %100 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %9, align 8
  %101 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @debugfs_create_file(i64 %91, i32 %94, i32 %97, %struct.kvm_stat_data* %98, i32 %104)
  br label %106

106:                                              ; preds = %74
  %107 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %9, align 8
  %108 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %107, i32 1
  store %struct.kvm_stats_debugfs_item* %108, %struct.kvm_stats_debugfs_item** %9, align 8
  br label %43

109:                                              ; preds = %43
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %53, %38, %18
  %111 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @debugfs_initialized(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @task_pid_nr(i32) #2

declare dso_local i32 @debugfs_create_dir(i8*, i32) #2

declare dso_local %struct.kvm_stat_data** @kcalloc(i32, i32, i32) #2

declare dso_local %struct.kvm_stat_data* @kzalloc(i32, i32) #2

declare dso_local i32 @debugfs_create_file(i64, i32, i32, %struct.kvm_stat_data*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
