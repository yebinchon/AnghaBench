; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_hash_get.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_hash_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, %struct.TYPE_4__*, i32 }

@FCGI_HASH_TABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32, i8*, i32, i32*)* @fcgi_hash_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fcgi_hash_get(%struct.TYPE_5__* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @FCGI_HASH_TABLE_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %13, align 8
  br label %24

24:                                               ; preds = %55, %5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @memcmp(i32 %42, i8* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %6, align 8
  br label %60

55:                                               ; preds = %39, %33, %27
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %13, align 8
  br label %24

59:                                               ; preds = %24
  store i8* null, i8** %6, align 8
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i8*, i8** %6, align 8
  ret i8* %61
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
