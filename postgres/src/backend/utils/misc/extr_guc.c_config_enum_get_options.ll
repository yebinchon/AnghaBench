; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_config_enum_get_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_config_enum_get_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_enum = type { %struct.config_enum_entry* }
%struct.config_enum_entry = type { i8*, i32 }
%struct.TYPE_5__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.config_enum*, i8*, i8*, i8*)* @config_enum_get_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @config_enum_get_options(%struct.config_enum* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.config_enum*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.config_enum_entry*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  store %struct.config_enum* %0, %struct.config_enum** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = call i32 @initStringInfo(%struct.TYPE_5__* %10)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @appendStringInfoString(%struct.TYPE_5__* %10, i8* %13)
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.config_enum*, %struct.config_enum** %5, align 8
  %18 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %17, i32 0, i32 0
  %19 = load %struct.config_enum_entry*, %struct.config_enum_entry** %18, align 8
  store %struct.config_enum_entry* %19, %struct.config_enum_entry** %9, align 8
  br label %20

20:                                               ; preds = %44, %4
  %21 = load %struct.config_enum_entry*, %struct.config_enum_entry** %9, align 8
  %22 = icmp ne %struct.config_enum_entry* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.config_enum_entry*, %struct.config_enum_entry** %9, align 8
  %25 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %47

30:                                               ; preds = %28
  %31 = load %struct.config_enum_entry*, %struct.config_enum_entry** %9, align 8
  %32 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.config_enum_entry*, %struct.config_enum_entry** %9, align 8
  %37 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @appendStringInfoString(%struct.TYPE_5__* %10, i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @appendBinaryStringInfo(%struct.TYPE_5__* %10, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %30
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.config_enum_entry*, %struct.config_enum_entry** %9, align 8
  %46 = getelementptr inbounds %struct.config_enum_entry, %struct.config_enum_entry* %45, i32 1
  store %struct.config_enum_entry* %46, %struct.config_enum_entry** %9, align 8
  br label %20

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %11, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, %61
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %52, %47
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @appendStringInfoString(%struct.TYPE_5__* %10, i8* %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  ret i8* %69
}

declare dso_local i32 @initStringInfo(%struct.TYPE_5__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
