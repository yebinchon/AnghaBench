; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tuimenu.c_TuiDrawMenuItem.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tuimenu.c_TuiDrawMenuItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8**, i64, i64 }

@UiTextColor = common dso_local global i32 0, align 4
@UiMenuBgColor = common dso_local global i32 0, align 4
@UiCenterMenu = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@UiMenuFgColor = common dso_local global i32 0, align 4
@UiSelectedTextColor = common dso_local global i32 0, align 4
@UiSelectedTextBgColor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawMenuItem(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* @UiTextColor, align 4
  %13 = load i32, i32* @UiMenuBgColor, align 4
  %14 = call i32 @ATTR(i32 %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* @UiCenterMenu, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = sub nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %17
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strlen(i8* %40)
  br label %43

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %42, %34
  %44 = phi i64 [ %41, %34 ], [ 0, %42 ]
  %45 = sub i64 %26, %44
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = udiv i64 %46, 2
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %49, %50
  %52 = add i64 %51, 1
  store i64 %52, i64* %10, align 8
  store i64 0, i64* %6, align 8
  br label %53

53:                                               ; preds = %60, %43
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %58
  store i8 32, i8* %59, align 1
  br label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %53

63:                                               ; preds = %53
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %64
  store i8 0, i8* %65, align 1
  br label %70

66:                                               ; preds = %2
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %67, align 16
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %69 = call i32 @strcat(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcat(i8* %79, i8* %85)
  br label %87

87:                                               ; preds = %78, %70
  %88 = load i64, i64* @UiCenterMenu, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  store i64 0, i64* %6, align 8
  br label %91

91:                                               ; preds = %98, %90
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %97 = call i32 @strcat(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %91

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %87
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i8**, i8*** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %126

110:                                              ; preds = %102
  %111 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %112 = call i32 @memset(i8* %111, i32 0, i32 80)
  %113 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = sub nsw i32 %120, 1
  %122 = call i32 @memset(i8* %113, i32 196, i32 %121)
  %123 = load i32, i32* @UiMenuFgColor, align 4
  %124 = load i32, i32* @UiMenuBgColor, align 4
  %125 = call i32 @ATTR(i32 %123, i32 %124)
  store i32 %125, i32* %11, align 4
  br label %137

126:                                              ; preds = %102
  %127 = load i64, i64* %5, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* @UiSelectedTextColor, align 4
  %134 = load i32, i32* @UiSelectedTextBgColor, align 4
  %135 = call i32 @ATTR(i32 %133, i32 %134)
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %132, %126
  br label %137

137:                                              ; preds = %136, %110
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  %146 = load i64, i64* %5, align 8
  %147 = add i64 %145, %146
  %148 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @UiDrawText(i32 %141, i64 %147, i8* %148, i32 %149)
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @ATTR(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @UiDrawText(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
