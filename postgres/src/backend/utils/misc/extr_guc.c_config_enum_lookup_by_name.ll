; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_config_enum_lookup_by_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_config_enum_lookup_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_enum = type { %struct.config_enum_entry* }
%struct.config_enum_entry = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_enum_lookup_by_name(%struct.config_enum* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_enum*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.config_enum_entry*, align 8
  store %struct.config_enum* %0, %struct.config_enum** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.config_enum*, %struct.config_enum** %5, align 8
  %10 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %9, i32 0, i32 0
  %11 = load %struct.config_enum_entry*, %struct.config_enum_entry** %10, align 8
  store %struct.config_enum_entry* %11, %struct.config_enum_entry** %8, align 8
  br label %12

12:                                               ; preds = %35, %3
  %13 = load %struct.config_enum_entry*, %struct.config_enum_entry** %8, align 8
  %14 = icmp ne %struct.config_enum_entry* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.config_enum_entry*, %struct.config_enum_entry** %8, align 8
  %17 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.config_enum_entry*, %struct.config_enum_entry** %8, align 8
  %25 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @pg_strcasecmp(i8* %23, i64 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.config_enum_entry*, %struct.config_enum_entry** %8, align 8
  %31 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  store i32 1, i32* %4, align 4
  br label %40

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.config_enum_entry*, %struct.config_enum_entry** %8, align 8
  %37 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %36, i32 1
  store %struct.config_enum_entry* %37, %struct.config_enum_entry** %8, align 8
  br label %12

38:                                               ; preds = %20
  %39 = load i32*, i32** %7, align 8
  store i32 0, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @pg_strcasecmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
