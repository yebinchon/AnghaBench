; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c__meta_flag_preparse.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c__meta_flag_preparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._meta_flags = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct._meta_flags*)* @_meta_flag_preparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_meta_flag_preparse(i8* %0, i64 %1, %struct._meta_flags* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._meta_flags*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [127 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct._meta_flags* %2, %struct._meta_flags** %7, align 8
  %12 = bitcast [127 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 508, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %87, %3
  %14 = load i32, i32* %8, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %90

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sge i32 %25, 127
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [127 x i32], [127 x i32]* %9, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %18
  store i32 -1, i32* %4, align 4
  br label %92

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [127 x i32], [127 x i32]* %9, i64 0, i64 %36
  store i32 1, i32* %37, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %85 [
    i32 78, label %44
    i32 84, label %51
    i32 82, label %56
    i32 108, label %61
    i32 79, label %66
    i32 107, label %69
    i32 115, label %69
    i32 116, label %69
    i32 99, label %69
    i32 118, label %69
    i32 102, label %69
    i32 104, label %70
    i32 117, label %73
    i32 113, label %76
    i32 70, label %79
    i32 83, label %79
    i32 67, label %79
    i32 73, label %82
  ]

44:                                               ; preds = %34
  %45 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %46 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %48 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %86

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %55 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %86

56:                                               ; preds = %34
  %57 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %58 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %86

61:                                               ; preds = %34
  %62 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %63 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %65 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %86

66:                                               ; preds = %34
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %86

69:                                               ; preds = %34, %34, %34, %34, %34, %34
  br label %86

70:                                               ; preds = %34
  %71 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %72 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %86

73:                                               ; preds = %34
  %74 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %75 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  br label %86

76:                                               ; preds = %34
  %77 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %78 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %77, i32 0, i32 4
  store i32 1, i32* %78, align 4
  br label %86

79:                                               ; preds = %34, %34, %34
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %86

82:                                               ; preds = %34
  %83 = load %struct._meta_flags*, %struct._meta_flags** %7, align 8
  %84 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %83, i32 0, i32 5
  store i32 1, i32* %84, align 4
  br label %86

85:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %92

86:                                               ; preds = %82, %79, %76, %73, %70, %69, %66, %61, %56, %51, %44
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %13

90:                                               ; preds = %13
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %85, %33
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
