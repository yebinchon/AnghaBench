; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_r_anal_class_delete_attr_raw.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_class.c_r_anal_class_delete_attr_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@R_EVENT_CLASS_ATTR_DEL = common dso_local global i32 0, align 4
@R_ANAL_CLASS_ERR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32, i8*)* @r_anal_class_delete_attr_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_anal_class_delete_attr_raw(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @attr_type_id(i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i8* @key_attr_content(i8* %14, i8* %15, i8* %16)
  store i8* %17, i8** %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @sdb_remove(i32 %20, i8* %21, i32 0)
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i8* @key_attr_content_specific(i8* %23, i8* %24, i8* %25)
  store i8* %26, i8** %10, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @sdb_remove(i32 %29, i8* %30, i32 0)
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i8* @key_attr_type_attrs(i8* %32, i8* %33)
  store i8* %34, i8** %10, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @sdb_array_remove(i32 %37, i8* %38, i8* %39, i32 0)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @sdb_exists(i32 %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @key_attr_types(i8* %51)
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @sdb_array_remove(i32 %50, i8* %52, i8* %53, i32 0)
  br label %55

55:                                               ; preds = %47, %4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %59 = load i8*, i8** %8, align 8
  store i8* %59, i8** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @R_EVENT_CLASS_ATTR_DEL, align 4
  %66 = call i32 @r_event_send(i32 %64, i32 %65, %struct.TYPE_5__* %11)
  %67 = load i32, i32* @R_ANAL_CLASS_ERR_SUCCESS, align 4
  ret i32 %67
}

declare dso_local i8* @attr_type_id(i32) #1

declare dso_local i8* @key_attr_content(i8*, i8*, i8*) #1

declare dso_local i32 @sdb_remove(i32, i8*, i32) #1

declare dso_local i8* @key_attr_content_specific(i8*, i8*, i8*) #1

declare dso_local i8* @key_attr_type_attrs(i8*, i8*) #1

declare dso_local i32 @sdb_array_remove(i32, i8*, i8*, i32) #1

declare dso_local i32 @sdb_exists(i32, i8*) #1

declare dso_local i8* @key_attr_types(i8*) #1

declare dso_local i32 @r_event_send(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
