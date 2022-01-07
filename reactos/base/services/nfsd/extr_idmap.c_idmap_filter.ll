; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_idmap_filter.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_idmap_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_config = type { i32*, i32* }
%struct.idmap_lookup = type { i32, i64, i64, i32 }

@NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"(&(objectClass=%s)(%s=%u))\00", align 1
@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ldap filter buffer overflow: '%s=%u'\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"(&(objectClass=%s)(%s=%s))\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ldap filter buffer overflow: '%s=%s'\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap_config*, %struct.idmap_lookup*, i8*, i64)* @idmap_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmap_filter(%struct.idmap_config* %0, %struct.idmap_lookup* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.idmap_config*, align 8
  %6 = alloca %struct.idmap_lookup*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.idmap_config* %0, %struct.idmap_config** %5, align 8
  store %struct.idmap_lookup* %1, %struct.idmap_lookup** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @NO_ERROR, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %13 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %94 [
    i32 129, label %15
    i32 128, label %54
  ]

15:                                               ; preds = %4
  %16 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %17 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.idmap_config*, %struct.idmap_config** %5, align 8
  %22 = getelementptr inbounds %struct.idmap_config, %struct.idmap_config* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %25 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.idmap_config*, %struct.idmap_config** %5, align 8
  %30 = getelementptr inbounds %struct.idmap_config, %struct.idmap_config* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %33 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @StringCchPrintfA(i8* %19, i64 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %36, i32 %37)
  %39 = call i32 @FAILED(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %15
  %42 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.idmap_config*, %struct.idmap_config** %5, align 8
  %44 = getelementptr inbounds %struct.idmap_config, %struct.idmap_config* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %47 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %41, %15
  br label %96

54:                                               ; preds = %4
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.idmap_config*, %struct.idmap_config** %5, align 8
  %58 = getelementptr inbounds %struct.idmap_config, %struct.idmap_config* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %61 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.idmap_config*, %struct.idmap_config** %5, align 8
  %66 = getelementptr inbounds %struct.idmap_config, %struct.idmap_config* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %69 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %74 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @StringCchPrintfA(i8* %55, i64 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %72, i32 %75)
  %77 = call i32 @FAILED(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %54
  %80 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  store i32 %80, i32* %10, align 4
  %81 = load %struct.idmap_config*, %struct.idmap_config** %5, align 8
  %82 = getelementptr inbounds %struct.idmap_config, %struct.idmap_config* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %85 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.idmap_lookup*, %struct.idmap_lookup** %6, align 8
  %90 = getelementptr inbounds %struct.idmap_lookup, %struct.idmap_lookup* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %79, %54
  br label %96

94:                                               ; preds = %4
  %95 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %94, %93, %53
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @StringCchPrintfA(i8*, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @eprintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
