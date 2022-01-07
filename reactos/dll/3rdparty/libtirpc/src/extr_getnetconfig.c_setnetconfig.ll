; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getnetconfig.c_setnetconfig.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getnetconfig.c_setnetconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.netconfig_vars = type { i32, i64, i32 }

@ni = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nc_file = common dso_local global i32* null, align 8
@NETCONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@NC_VALID = common dso_local global i32 0, align 4
@NC_NONETCONFIG = common dso_local global i32 0, align 4
@nc_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setnetconfig() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.netconfig_vars*, align 8
  %3 = call i64 @malloc(i32 24)
  %4 = inttoptr i64 %3 to %struct.netconfig_vars*
  store %struct.netconfig_vars* %4, %struct.netconfig_vars** %2, align 8
  %5 = icmp eq %struct.netconfig_vars* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %33

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 4
  %10 = load i32*, i32** @nc_file, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @NETCONFIG, align 4
  %14 = call i32* @fopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** @nc_file, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %12, %7
  %17 = load i32, i32* @NC_VALID, align 4
  %18 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %19 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %21 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 1), align 4
  %23 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %24 = getelementptr inbounds %struct.netconfig_vars, %struct.netconfig_vars* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %26 = bitcast %struct.netconfig_vars* %25 to i8*
  store i8* %26, i8** %1, align 8
  br label %33

27:                                               ; preds = %12
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ni, i32 0, i32 0), align 4
  %30 = load i32, i32* @NC_NONETCONFIG, align 4
  store i32 %30, i32* @nc_error, align 4
  %31 = load %struct.netconfig_vars*, %struct.netconfig_vars** %2, align 8
  %32 = call i32 @free(%struct.netconfig_vars* %31)
  store i8* null, i8** %1, align 8
  br label %33

33:                                               ; preds = %27, %16, %6
  %34 = load i8*, i8** %1, align 8
  ret i8* %34
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @free(%struct.netconfig_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
