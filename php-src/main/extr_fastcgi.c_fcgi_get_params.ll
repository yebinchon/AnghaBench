; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_get_params.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*)* @fcgi_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcgi_get_params(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %10

10:                                               ; preds = %123, %3
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %143

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* %15, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp uge i32 %19, 128
  %21 = zext i1 %20 to i32
  %22 = call i64 @UNEXPECTED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %14
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8*, i8** %7, align 8
  %28 = icmp uge i8* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @UNEXPECTED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %144

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 127
  %36 = shl i32 %35, 24
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i32
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %33, %14
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp uge i8* %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @UNEXPECTED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %144

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp uge i32 %70, 128
  %72 = zext i1 %71 to i32
  %73 = call i64 @UNEXPECTED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %108

75:                                               ; preds = %65
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  %78 = load i8*, i8** %7, align 8
  %79 = icmp uge i8* %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @UNEXPECTED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %144

84:                                               ; preds = %75
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, 127
  %87 = shl i32 %86, 24
  store i32 %87, i32* %9, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 16
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 8
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  %104 = load i8, i8* %102, align 1
  %105 = zext i8 %104 to i32
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %84, %65
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add i32 %109, %110
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = icmp ugt i32 %111, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @UNEXPECTED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %144

123:                                              ; preds = %108
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @FCGI_HASH_FUNC(i8* %126, i32 %127)
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @fcgi_hash_set(i32* %125, i32 %128, i8* %129, i32 %130, i8* %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = add i32 %137, %138
  %140 = load i8*, i8** %6, align 8
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %6, align 8
  br label %10

143:                                              ; preds = %10
  store i32 1, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %122, %83, %64, %32
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32 @fcgi_hash_set(i32*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @FCGI_HASH_FUNC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
