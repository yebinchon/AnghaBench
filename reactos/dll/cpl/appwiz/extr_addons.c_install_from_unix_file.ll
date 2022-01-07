; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_addons.c_install_from_unix_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_addons.c_install_from_unix_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSTALL_FAILED = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s not found\0A\00", align 1
@INSTALL_NEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Could not get wine_get_dos_file_name function, calling install_cab directly.\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @install_from_unix_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_from_unix_file(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %16, %18
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %19, %21
  %23 = add nsw i32 %22, 3
  %24 = call i8* @heap_alloc(i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @INSTALL_FAILED, align 4
  store i32 %28, i32* %4, align 4
  br label %123

29:                                               ; preds = %3
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 47
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 92
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8 47, i8* %59, align 1
  br label %60

60:                                               ; preds = %54, %45, %36, %29
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strcpy(i8* %68, i8* %69)
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 47, i8* %79, align 1
  br label %80

80:                                               ; preds = %64, %60
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @strcpy(i8* %84, i8* %85)
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* @O_RDONLY, align 4
  %89 = call i32 @_open(i8* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @debugstr_a(i8* %93)
  %95 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @heap_free(i8* %96)
  %98 = load i32, i32* @INSTALL_NEXT, align 4
  store i32 %98, i32* %4, align 4
  br label %123

99:                                               ; preds = %80
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @_close(i32 %100)
  %102 = call i32 @WARN(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @CP_ACP, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @MultiByteToWideChar(i32 %103, i32 0, i8* %104, i32 -1, i8* null, i32 0)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i8* @heap_alloc(i32 %109)
  store i8* %110, i8** %8, align 8
  %111 = load i32, i32* @CP_ACP, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @MultiByteToWideChar(i32 %111, i32 0, i8* %112, i32 -1, i8* %113, i32 %114)
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @heap_free(i8* %116)
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @install_file(i8* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @heap_free(i8* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %99, %92, %27
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @_open(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @install_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
