; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_doabbr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_doabbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i8*, i8, i64 }

@PERCENT_Z_LEN_BOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.zone*, i8*, i32, i64, i32)* @doabbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @doabbr(i8* %0, %struct.zone* %1, i8* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.zone*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store %struct.zone* %1, %struct.zone** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.zone*, %struct.zone** %9, align 8
  %21 = getelementptr inbounds %struct.zone, %struct.zone* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %17, align 8
  %23 = load i8*, i8** %17, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 47)
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %6
  %28 = load i32, i32* @PERCENT_Z_LEN_BOUND, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %18, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %33 = load %struct.zone*, %struct.zone** %9, align 8
  %34 = getelementptr inbounds %struct.zone, %struct.zone* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 122
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.zone*, %struct.zone** %9, align 8
  %40 = getelementptr inbounds %struct.zone, %struct.zone* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i8* @abbroffset(i8* %32, i64 %43)
  store i8* %44, i8** %10, align 8
  br label %50

45:                                               ; preds = %27
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @sprintf(i8* %51, i8* %52, i8* %53)
  %55 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %55)
  br label %82

56:                                               ; preds = %6
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i32 @strcpy(i8* %60, i8* %62)
  br label %81

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i8* %65, i8* %66, i32 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %64, %59
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i8*, i8** %8, align 8
  %84 = call i64 @strlen(i8* %83)
  store i64 %84, i64* %16, align 8
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* %16, align 8
  store i64 %88, i64* %7, align 8
  br label %128

89:                                               ; preds = %82
  %90 = load i8*, i8** %8, align 8
  store i8* %90, i8** %14, align 8
  br label %91

91:                                               ; preds = %97, %89
  %92 = load i8*, i8** %14, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @is_alpha(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %14, align 8
  br label %91

100:                                              ; preds = %91
  %101 = load i64, i64* %16, align 8
  %102 = icmp ugt i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i8*, i8** %14, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i64, i64* %16, align 8
  store i64 %109, i64* %7, align 8
  br label %128

110:                                              ; preds = %103, %100
  %111 = load i8*, i8** %8, align 8
  %112 = load i64, i64* %16, align 8
  %113 = add i64 %112, 2
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load i8*, i8** %8, align 8
  %116 = load i64, i64* %16, align 8
  %117 = add i64 %116, 1
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 62, i8* %118, align 1
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8*, i8** %8, align 8
  %122 = load i64, i64* %16, align 8
  %123 = call i32 @memmove(i8* %120, i8* %121, i64 %122)
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 60, i8* %125, align 1
  %126 = load i64, i64* %16, align 8
  %127 = add i64 %126, 2
  store i64 %127, i64* %7, align 8
  br label %128

128:                                              ; preds = %110, %108, %87
  %129 = load i64, i64* %7, align 8
  ret i64 %129
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @abbroffset(i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @is_alpha(i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
