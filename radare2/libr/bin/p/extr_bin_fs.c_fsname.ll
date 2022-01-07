; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_fs.c_fsname.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_fs.c_fsname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i32, i32 }

@fstypes = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @fsname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fsname(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [1024 x i64], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %94, %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fstypes, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %97

18:                                               ; preds = %10
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fstypes, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %7, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [1024 x i64], [1024 x i64]* %4, i64 0, i64 0
  %28 = call i64 @r_buf_read_at(i32* %23, i32 %26, i64* %27, i64 8192)
  %29 = icmp ne i64 %28, 8192
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %97

31:                                               ; preds = %18
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @R_MIN(i64 %39, i32 8192)
  store i64 %40, i64* %8, align 8
  %41 = getelementptr inbounds [1024 x i64], [1024 x i64]* %4, i64 0, i64 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @memcmp(i64* %41, i32 %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %92, label %48

48:                                               ; preds = %36
  store i32 1, i32* %9, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @R_MIN(i64 %51, i32 8192)
  store i64 %52, i64* %8, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [1024 x i64], [1024 x i64]* %4, i64 0, i64 0
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @r_buf_read_at(i32* %53, i32 %56, i64* %57, i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %97

63:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %8, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1024 x i64], [1024 x i64]* %4, i64 0, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %83

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %64

83:                                               ; preds = %78, %64
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @strdup(i64 %89)
  store i8* %90, i8** %2, align 8
  br label %98

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %36
  br label %93

93:                                               ; preds = %92, %31
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %10

97:                                               ; preds = %62, %30, %10
  store i8* null, i8** %2, align 8
  br label %98

98:                                               ; preds = %97, %86
  %99 = load i8*, i8** %2, align 8
  ret i8* %99
}

declare dso_local i64 @r_buf_read_at(i32*, i32, i64*, i64) #1

declare dso_local i64 @R_MIN(i64, i32) #1

declare dso_local i32 @memcmp(i64*, i32, i64) #1

declare dso_local i8* @strdup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
