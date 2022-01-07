; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_menu.c_menu_add_prop.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_menu.c_menu_add_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.property*, i32, %struct.menu*, i32 }
%struct.property = type { i8*, %struct.TYPE_2__, %struct.expr*, %struct.menu* }
%struct.TYPE_2__ = type { i32 }
%struct.expr = type { i32 }

@current_entry = common dso_local global %struct.menu* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"leading whitespace ignored\00", align 1
@rootmenu = common dso_local global %struct.menu zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"prompt redefined\00", align 1
@P_PROMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.property* @menu_add_prop(i32 %0, i8* %1, %struct.expr* %2, %struct.expr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.expr*, align 8
  %8 = alloca %struct.expr*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca %struct.menu*, align 8
  %11 = alloca %struct.expr*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.expr* %2, %struct.expr** %7, align 8
  store %struct.expr* %3, %struct.expr** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %14 = getelementptr inbounds %struct.menu, %struct.menu* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.property* @prop_alloc(i32 %12, i32 %15)
  store %struct.property* %16, %struct.property** %9, align 8
  %17 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %18 = load %struct.property*, %struct.property** %9, align 8
  %19 = getelementptr inbounds %struct.property, %struct.property* %18, i32 0, i32 3
  store %struct.menu* %17, %struct.menu** %19, align 8
  %20 = load %struct.expr*, %struct.expr** %7, align 8
  %21 = load %struct.property*, %struct.property** %9, align 8
  %22 = getelementptr inbounds %struct.property, %struct.property* %21, i32 0, i32 2
  store %struct.expr* %20, %struct.expr** %22, align 8
  %23 = load %struct.expr*, %struct.expr** %8, align 8
  %24 = call i32 @menu_check_dep(%struct.expr* %23)
  %25 = load %struct.property*, %struct.property** %9, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %94

30:                                               ; preds = %4
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isspace(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.property*, %struct.property** %9, align 8
  %37 = call i32 @prop_warn(%struct.property* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %43, %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @isspace(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  br label %38

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %49 = getelementptr inbounds %struct.menu, %struct.menu* %48, i32 0, i32 0
  %50 = load %struct.property*, %struct.property** %49, align 8
  %51 = icmp ne %struct.property* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %54 = icmp ne %struct.menu* %53, @rootmenu
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.property*, %struct.property** %9, align 8
  %57 = call i32 @prop_warn(%struct.property* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52, %47
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @P_PROMPT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = load %struct.menu*, %struct.menu** @current_entry, align 8
  store %struct.menu* %63, %struct.menu** %10, align 8
  br label %64

64:                                               ; preds = %75, %74, %62
  %65 = load %struct.menu*, %struct.menu** %10, align 8
  %66 = getelementptr inbounds %struct.menu, %struct.menu* %65, i32 0, i32 2
  %67 = load %struct.menu*, %struct.menu** %66, align 8
  store %struct.menu* %67, %struct.menu** %10, align 8
  %68 = icmp ne %struct.menu* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load %struct.menu*, %struct.menu** %10, align 8
  %71 = getelementptr inbounds %struct.menu, %struct.menu* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %64

75:                                               ; preds = %69
  %76 = load %struct.menu*, %struct.menu** %10, align 8
  %77 = getelementptr inbounds %struct.menu, %struct.menu* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.expr* @expr_copy(i32 %78)
  store %struct.expr* %79, %struct.expr** %11, align 8
  %80 = load %struct.property*, %struct.property** %9, align 8
  %81 = getelementptr inbounds %struct.property, %struct.property* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.expr*, %struct.expr** %11, align 8
  %85 = call i32 @expr_alloc_and(i32 %83, %struct.expr* %84)
  %86 = load %struct.property*, %struct.property** %9, align 8
  %87 = getelementptr inbounds %struct.property, %struct.property* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  br label %64

89:                                               ; preds = %64
  br label %90

90:                                               ; preds = %89, %58
  %91 = load %struct.property*, %struct.property** %9, align 8
  %92 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %93 = getelementptr inbounds %struct.menu, %struct.menu* %92, i32 0, i32 0
  store %struct.property* %91, %struct.property** %93, align 8
  br label %94

94:                                               ; preds = %90, %4
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.property*, %struct.property** %9, align 8
  %97 = getelementptr inbounds %struct.property, %struct.property* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.property*, %struct.property** %9, align 8
  ret %struct.property* %98
}

declare dso_local %struct.property* @prop_alloc(i32, i32) #1

declare dso_local i32 @menu_check_dep(%struct.expr*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @prop_warn(%struct.property*, i8*) #1

declare dso_local %struct.expr* @expr_copy(i32) #1

declare dso_local i32 @expr_alloc_and(i32, %struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
