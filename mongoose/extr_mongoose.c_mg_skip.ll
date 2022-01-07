; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_skip.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mg_skip(i8* %0, i8* %1, i8* %2, %struct.mg_str* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mg_str*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.mg_str* %3, %struct.mg_str** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %11 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  br label %12

12:                                               ; preds = %24, %4
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32* @strchr(i8* %17, i8 zeroext %19)
  %21 = icmp eq i32* %20, null
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i1 [ false, %12 ], [ %21, %16 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %12

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %30 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %37 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %50, %27
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32* @strchr(i8* %43, i8 zeroext %45)
  %47 = icmp ne i32* %46, null
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi i1 [ false, %38 ], [ %47, %42 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  br label %38

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  ret i8* %54
}

declare dso_local i32* @strchr(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
