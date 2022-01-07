; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_init.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_config = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"config_defaults() failed with %d\0A\00", align 1
@CONFIG_FILENAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"config_load('%s') failed with %d\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap_config*)* @config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_init(%struct.idmap_config* %0) #0 {
  %2 = alloca %struct.idmap_config*, align 8
  %3 = alloca i32, align 4
  store %struct.idmap_config* %0, %struct.idmap_config** %2, align 8
  %4 = load %struct.idmap_config*, %struct.idmap_config** %2, align 8
  %5 = call i32 @config_defaults(%struct.idmap_config* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.idmap_config*, %struct.idmap_config** %2, align 8
  %13 = load i8*, i8** @CONFIG_FILENAME, align 8
  %14 = call i32 @config_load(%struct.idmap_config* %12, i8* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i8*, i8** @CONFIG_FILENAME, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %19)
  br label %22

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %17, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @config_defaults(%struct.idmap_config*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @config_load(%struct.idmap_config*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
