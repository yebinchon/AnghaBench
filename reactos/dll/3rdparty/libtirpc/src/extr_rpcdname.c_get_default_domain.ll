; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpcdname.c_get_default_domain.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpcdname.c_get_default_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_domain = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_default_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_default_domain() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [256 x i8], align 16
  %3 = load i8*, i8** @default_domain, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i8*, i8** @default_domain, align 8
  store i8* %6, i8** %1, align 8
  br label %31

7:                                                ; preds = %0
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %9 = call i64 @getdomainname(i8* %8, i32 256)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8* null, i8** %1, align 8
  br label %31

12:                                               ; preds = %7
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %14 = call i32 @strlen(i8* %13)
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %18 = call i32 @strlen(i8* %17)
  %19 = add i32 %18, 1
  %20 = call i64 @malloc(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** @default_domain, align 8
  %22 = load i8*, i8** @default_domain, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i8* null, i8** %1, align 8
  br label %31

25:                                               ; preds = %16
  %26 = load i8*, i8** @default_domain, align 8
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %28 = call i32 @strcpy(i8* %26, i8* %27)
  %29 = load i8*, i8** @default_domain, align 8
  store i8* %29, i8** %1, align 8
  br label %31

30:                                               ; preds = %12
  store i8* null, i8** %1, align 8
  br label %31

31:                                               ; preds = %30, %25, %24, %11, %5
  %32 = load i8*, i8** %1, align 8
  ret i8* %32
}

declare dso_local i64 @getdomainname(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
