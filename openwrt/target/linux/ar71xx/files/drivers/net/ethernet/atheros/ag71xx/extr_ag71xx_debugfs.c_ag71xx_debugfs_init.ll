; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_debugfs.c_ag71xx_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_debugfs.c_ag71xx_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@ag71xx_debugfs_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unable to create debugfs directory\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"int_stats\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@ag71xx_fops_int_stats = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"napi_stats\00", align 1
@ag71xx_fops_napi_stats = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"tx_ring\00", align 1
@ag71xx_fops_tx_ring = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"rx_ring\00", align 1
@ag71xx_fops_rx_ring = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ag71xx_debugfs_init(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %6 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @dev_name(%struct.device* %9)
  %11 = load i32, i32* @ag71xx_debugfs_root, align 4
  %12 = call i32 @debugfs_create_dir(i32 %10, i32 %11)
  %13 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %14 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %17 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %55

26:                                               ; preds = %1
  %27 = load i32, i32* @S_IRUGO, align 4
  %28 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %29 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %33 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %31, %struct.ag71xx* %32, i32* @ag71xx_fops_int_stats)
  %34 = load i32, i32* @S_IRUGO, align 4
  %35 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %36 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %40 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %38, %struct.ag71xx* %39, i32* @ag71xx_fops_napi_stats)
  %41 = load i32, i32* @S_IRUGO, align 4
  %42 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %43 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %47 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %45, %struct.ag71xx* %46, i32* @ag71xx_fops_tx_ring)
  %48 = load i32, i32* @S_IRUGO, align 4
  %49 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %50 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %54 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 %52, %struct.ag71xx* %53, i32* @ag71xx_fops_rx_ring)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %26, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.ag71xx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
