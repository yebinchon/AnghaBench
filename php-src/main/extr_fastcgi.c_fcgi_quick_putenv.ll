; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_quick_putenv.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_quick_putenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fcgi_quick_putenv(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @fcgi_hash_del(i32* %16, i32 %17, i8* %18, i32 %19)
  store i8* null, i8** %6, align 8
  br label %32

21:                                               ; preds = %5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = trunc i64 %29 to i32
  %31 = call i8* @fcgi_hash_set(i32* %23, i32 %24, i8* %25, i32 %26, i8* %27, i32 %30)
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %21, %14
  %33 = load i8*, i8** %6, align 8
  ret i8* %33
}

declare dso_local i32 @fcgi_hash_del(i32*, i32, i8*, i32) #1

declare dso_local i8* @fcgi_hash_set(i32*, i32, i8*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
