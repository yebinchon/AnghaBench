; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_getcmd.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_getcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i8* }

@cmdtab = external dso_local global [0 x %struct.cmd], align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd* @getcmd(i8* %0) #0 {
  %2 = alloca %struct.cmd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cmd*, align 8
  %7 = alloca %struct.cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store %struct.cmd* null, %struct.cmd** %7, align 8
  store %struct.cmd* getelementptr inbounds ([0 x %struct.cmd], [0 x %struct.cmd]* @cmdtab, i64 0, i64 0), %struct.cmd** %6, align 8
  br label %10

10:                                               ; preds = %73, %1
  %11 = load %struct.cmd*, %struct.cmd** %6, align 8
  %12 = getelementptr inbounds %struct.cmd, %struct.cmd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %76

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %34, %15
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load %struct.cmd*, %struct.cmd** %6, align 8
  store %struct.cmd* %32, %struct.cmd** %2, align 8
  br label %82

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  br label %17

37:                                               ; preds = %17
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %72, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %57 = load %struct.cmd*, %struct.cmd** %6, align 8
  store %struct.cmd* %57, %struct.cmd** %7, align 8
  br label %71

58:                                               ; preds = %41
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %67, %58
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.cmd*, %struct.cmd** %6, align 8
  %75 = getelementptr inbounds %struct.cmd, %struct.cmd* %74, i32 1
  store %struct.cmd* %75, %struct.cmd** %6, align 8
  br label %10

76:                                               ; preds = %10
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store %struct.cmd* inttoptr (i64 -1 to %struct.cmd*), %struct.cmd** %2, align 8
  br label %82

80:                                               ; preds = %76
  %81 = load %struct.cmd*, %struct.cmd** %7, align 8
  store %struct.cmd* %81, %struct.cmd** %2, align 8
  br label %82

82:                                               ; preds = %80, %79, %31
  %83 = load %struct.cmd*, %struct.cmd** %2, align 8
  ret %struct.cmd* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
