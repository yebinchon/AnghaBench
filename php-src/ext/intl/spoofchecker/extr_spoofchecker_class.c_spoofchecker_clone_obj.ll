; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/spoofchecker/extr_spoofchecker_class.c_spoofchecker_clone_obj.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/spoofchecker/extr_spoofchecker_class.c_spoofchecker_clone_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* (i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@Spoofchecker_ce_ptr = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to clone SpoofChecker object\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_12__*)* @spoofchecker_clone_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @spoofchecker_clone_obj(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = call %struct.TYPE_13__* @php_intl_spoofchecker_fetch_object(%struct.TYPE_12__* %6)
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = call i32 @SPOOFCHECKER_ERROR_P(%struct.TYPE_13__* %8)
  %10 = call i32 @intl_error_reset(i32 %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Spoofchecker_ce_ptr, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__* (i32)*, %struct.TYPE_12__* (i32)** %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_12__* %13(i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %3, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = call %struct.TYPE_13__* @php_intl_spoofchecker_fetch_object(%struct.TYPE_12__* %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %5, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = call i32 @zend_objects_clone_members(i32* %21, i32* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = call i32 @SPOOFCHECKER_ERROR_CODE_P(%struct.TYPE_13__* %28)
  %30 = call i32 @uspoof_clone(i32 %27, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = call i32 @SPOOFCHECKER_ERROR_CODE(%struct.TYPE_13__* %33)
  %35 = call i64 @U_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = call i32 @SPOOFCHECKER_ERROR_CODE(%struct.TYPE_13__* %38)
  %40 = call i32 @intl_error_set(i32* null, i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 0)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = call i32 @Spoofchecker_objects_free(i32* %42)
  %44 = load i32, i32* @E_ERROR, align 4
  %45 = call i32 @zend_error(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %37, %1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %47
}

declare dso_local %struct.TYPE_13__* @php_intl_spoofchecker_fetch_object(%struct.TYPE_12__*) #1

declare dso_local i32 @intl_error_reset(i32) #1

declare dso_local i32 @SPOOFCHECKER_ERROR_P(%struct.TYPE_13__*) #1

declare dso_local i32 @zend_objects_clone_members(i32*, i32*) #1

declare dso_local i32 @uspoof_clone(i32, i32) #1

declare dso_local i32 @SPOOFCHECKER_ERROR_CODE_P(%struct.TYPE_13__*) #1

declare dso_local i64 @U_FAILURE(i32) #1

declare dso_local i32 @SPOOFCHECKER_ERROR_CODE(%struct.TYPE_13__*) #1

declare dso_local i32 @intl_error_set(i32*, i32, i8*, i32) #1

declare dso_local i32 @Spoofchecker_objects_free(i32*) #1

declare dso_local i32 @zend_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
