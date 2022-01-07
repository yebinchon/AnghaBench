; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_get_vm_area.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_get_vm_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_boundaries = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot parse /proc/self/maps\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.vm_boundaries*)* @get_vm_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vm_area(i64 %0, %struct.vm_boundaries* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_boundaries*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.vm_boundaries* %1, %struct.vm_boundaries** %5, align 8
  store i32 1, i32* %7, align 4
  %13 = bitcast [1024 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 1024, i1 false)
  %14 = load %struct.vm_boundaries*, %struct.vm_boundaries** %5, align 8
  %15 = icmp ne %struct.vm_boundaries* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  %19 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %75

25:                                               ; preds = %18
  %26 = load %struct.vm_boundaries*, %struct.vm_boundaries** %5, align 8
  %27 = call i32 @memset(%struct.vm_boundaries* %26, i32 0, i32 16)
  br label %28

28:                                               ; preds = %69, %25
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @fgets(i8* %29, i32 1024, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %28
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %35 = call i8* @strchr(i8* %34, i8 signext 45)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %71

40:                                               ; preds = %33
  %41 = load i8*, i8** %9, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 32)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %71

50:                                               ; preds = %40
  store i8* null, i8** %10, align 8
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %52 = call i32 @sscanf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64* %11)
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @sscanf(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64* %12)
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.vm_boundaries*, %struct.vm_boundaries** %5, align 8
  %65 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.vm_boundaries*, %struct.vm_boundaries** %5, align 8
  %68 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  store i32 0, i32* %7, align 4
  br label %71

69:                                               ; preds = %58, %50
  br label %28

70:                                               ; preds = %28
  br label %71

71:                                               ; preds = %70, %62, %48, %38
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @fclose(i32* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %22, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @memset(%struct.vm_boundaries*, i32, i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
