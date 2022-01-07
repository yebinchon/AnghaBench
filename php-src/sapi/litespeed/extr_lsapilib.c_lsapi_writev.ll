; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_writev.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i8* }

@s_skip_write = common dso_local global i64 0, align 8
@g_running = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iovec**, i32, i32)* @lsapi_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsapi_writev(i32 %0, %struct.iovec** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iovec**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.iovec** %1, %struct.iovec*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i64, i64* @s_skip_write, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %5, align 4
  br label %120

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %115, %19
  %21 = load i32, i32* %11, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* @g_running, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %116

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.iovec**, %struct.iovec*** %7, align 8
  %31 = load %struct.iovec*, %struct.iovec** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @writev(i32 %29, %struct.iovec* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* @g_running, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %5, align 4
  br label %120

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %87, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %50
  %54 = load %struct.iovec**, %struct.iovec*** %7, align 8
  %55 = load %struct.iovec*, %struct.iovec** %54, align 8
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.iovec**, %struct.iovec*** %7, align 8
  %62 = load %struct.iovec*, %struct.iovec** %61, align 8
  %63 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sub i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load %struct.iovec**, %struct.iovec*** %7, align 8
  %68 = load %struct.iovec*, %struct.iovec** %67, align 8
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i32 1
  store %struct.iovec* %69, %struct.iovec** %67, align 8
  br label %87

70:                                               ; preds = %53
  %71 = load %struct.iovec**, %struct.iovec*** %7, align 8
  %72 = load %struct.iovec*, %struct.iovec** %71, align 8
  %73 = getelementptr inbounds %struct.iovec, %struct.iovec* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load %struct.iovec**, %struct.iovec*** %7, align 8
  %79 = load %struct.iovec*, %struct.iovec** %78, align 8
  %80 = getelementptr inbounds %struct.iovec, %struct.iovec* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.iovec**, %struct.iovec*** %7, align 8
  %83 = load %struct.iovec*, %struct.iovec** %82, align 8
  %84 = getelementptr inbounds %struct.iovec, %struct.iovec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub i32 %85, %81
  store i32 %86, i32* %84, align 8
  br label %88

87:                                               ; preds = %60
  br label %50

88:                                               ; preds = %70, %50
  br label %115

89:                                               ; preds = %28
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %114

92:                                               ; preds = %89
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @EAGAIN, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %97, %98
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %5, align 4
  br label %120

105:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %120

106:                                              ; preds = %92
  %107 = load i64, i64* @errno, align 8
  %108 = load i64, i64* @EINTR, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %120

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %89
  br label %115

115:                                              ; preds = %114, %88
  br label %20

116:                                              ; preds = %26
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %110, %105, %101, %45, %17
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
