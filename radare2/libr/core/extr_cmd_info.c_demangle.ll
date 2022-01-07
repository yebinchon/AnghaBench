; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_info.c_demangle.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_info.c_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"bin.lang\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @demangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @r_return_val_if_fail(i32 %17, i32 0)
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 32)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %55

25:                                               ; preds = %15
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @r_config_get(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @demangle_internal(%struct.TYPE_4__* %33, i8* %34, i8* %35)
  store i32 1, i32* %3, align 4
  br label %55

37:                                               ; preds = %25
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @strdup(i8* %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  store i8 0, i8* %47, align 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = call i32 @demangle_internal(%struct.TYPE_4__* %48, i8* %49, i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %37, %28, %24
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @r_return_val_if_fail(i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @demangle_internal(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
