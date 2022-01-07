; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_getBN.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_getBN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s:%d: Can't find %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not decode '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*)* @getBN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getBN(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @findattr(%struct.TYPE_4__* %8, i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i8*, i8*, ...) @TEST_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20, i8* %21)
  store i32* null, i32** %3, align 8
  br label %35

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @parseBN(i32** %7, i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = trunc i64 %27 to i32
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i8*, i8*, ...) @TEST_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32* null, i32** %3, align 8
  br label %35

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %33, %30, %12
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i8* @findattr(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @TEST_error(i8*, i8*, ...) #1

declare dso_local i32 @parseBN(i32**, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
