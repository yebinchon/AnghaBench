; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_check_execute_access.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_check_execute_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ACCESS4_EXECUTE = common dso_local global i32 0, align 4
@ACCESS4_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"nfs41_access() failed with %s for %s\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"server can't verify execute access, and user does not have read access to file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"user does not have execute access to file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"user has execute access to file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @check_execute_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_execute_access(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* @ACCESS4_EXECUTE, align 4
  %12 = load i32, i32* @ACCESS4_READ, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @nfs41_access(i32 %8, i32* %10, i32 %13, i32* %3, i32* %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @nfs_error_string(i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  store i32 %25, i32* %5, align 4
  br label %65

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ACCESS4_EXECUTE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ACCESS4_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ACCESS4_READ, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %36
  br label %64

49:                                               ; preds = %26
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ACCESS4_EXECUTE, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %49
  %62 = call i32 (i32, i8*, ...) @dprintf(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %54
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %17
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @nfs41_access(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @eprintf(i8*, i32, ...) #1

declare dso_local i32 @nfs_error_string(i32) #1

declare dso_local i32 @dprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
