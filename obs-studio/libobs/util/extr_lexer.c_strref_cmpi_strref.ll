; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_lexer.c_strref_cmpi_strref.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_lexer.c_strref_cmpi_strref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strref = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strref_cmpi_strref(%struct.strref* %0, %struct.strref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strref*, align 8
  %5 = alloca %struct.strref*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.strref* %0, %struct.strref** %4, align 8
  store %struct.strref* %1, %struct.strref** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.strref*, %struct.strref** %4, align 8
  %10 = call i64 @strref_is_empty(%struct.strref* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.strref*, %struct.strref** %5, align 8
  %14 = call i64 @strref_is_empty(%struct.strref* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 -1
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.strref*, %struct.strref** %5, align 8
  %20 = call i64 @strref_is_empty(%struct.strref* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %95

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %92, %23
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.strref*, %struct.strref** %4, align 8
  %27 = getelementptr inbounds %struct.strref, %struct.strref* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.strref*, %struct.strref** %4, align 8
  %32 = getelementptr inbounds %struct.strref, %struct.strref* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @toupper(i32 %36)
  %38 = trunc i64 %37 to i8
  %39 = sext i8 %38 to i32
  br label %41

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %30
  %42 = phi i32 [ %39, %30 ], [ 0, %40 ]
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %7, align 1
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.strref*, %struct.strref** %5, align 8
  %46 = getelementptr inbounds %struct.strref, %struct.strref* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.strref*, %struct.strref** %5, align 8
  %51 = getelementptr inbounds %struct.strref, %struct.strref* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @toupper(i32 %55)
  %57 = trunc i64 %56 to i8
  %58 = sext i8 %57 to i32
  br label %60

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %49
  %61 = phi i32 [ %58, %49 ], [ 0, %59 ]
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %8, align 1
  %63 = load i8, i8* %7, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* %8, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %95

69:                                               ; preds = %60
  %70 = load i8, i8* %7, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* %8, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %95

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.strref*, %struct.strref** %4, align 8
  %83 = getelementptr inbounds %struct.strref, %struct.strref* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ule i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.strref*, %struct.strref** %5, align 8
  %89 = getelementptr inbounds %struct.strref, %struct.strref* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ule i64 %87, %90
  br label %92

92:                                               ; preds = %86, %80
  %93 = phi i1 [ false, %80 ], [ %91, %86 ]
  br i1 %93, label %24, label %94

94:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %75, %68, %22, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @strref_is_empty(%struct.strref*) #1

declare dso_local i64 @toupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
