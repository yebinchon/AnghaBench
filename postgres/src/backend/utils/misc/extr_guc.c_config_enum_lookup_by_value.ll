; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_config_enum_lookup_by_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_config_enum_lookup_by_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_enum = type { %struct.TYPE_2__, %struct.config_enum_entry* }
%struct.TYPE_2__ = type { i32 }
%struct.config_enum_entry = type { i8*, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not find enum option %d for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @config_enum_lookup_by_value(%struct.config_enum* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.config_enum*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.config_enum_entry*, align 8
  store %struct.config_enum* %0, %struct.config_enum** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.config_enum*, %struct.config_enum** %4, align 8
  %8 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %7, i32 0, i32 1
  %9 = load %struct.config_enum_entry*, %struct.config_enum_entry** %8, align 8
  store %struct.config_enum_entry* %9, %struct.config_enum_entry** %6, align 8
  br label %10

10:                                               ; preds = %31, %2
  %11 = load %struct.config_enum_entry*, %struct.config_enum_entry** %6, align 8
  %12 = icmp ne %struct.config_enum_entry* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.config_enum_entry*, %struct.config_enum_entry** %6, align 8
  %15 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load %struct.config_enum_entry*, %struct.config_enum_entry** %6, align 8
  %22 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.config_enum_entry*, %struct.config_enum_entry** %6, align 8
  %28 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  br label %42

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.config_enum_entry*, %struct.config_enum_entry** %6, align 8
  %33 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %32, i32 1
  store %struct.config_enum_entry* %33, %struct.config_enum_entry** %6, align 8
  br label %10

34:                                               ; preds = %18
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.config_enum*, %struct.config_enum** %4, align 8
  %38 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40)
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %34, %26
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
