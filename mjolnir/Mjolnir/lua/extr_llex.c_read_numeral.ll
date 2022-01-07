; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_llex.c_read_numeral.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_llex.c_read_numeral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Pp\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-+\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"malformed number\00", align 1
@TK_FLT = common dso_local global i32 0, align 4
@TK_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @read_numeral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_numeral(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @lisdigit(i32 %14)
  %16 = call i32 @lua_assert(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 @save_and_next(%struct.TYPE_10__* %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 48
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = call i64 @check_next2(%struct.TYPE_10__* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %26

26:                                               ; preds = %25, %21, %2
  br label %27

27:                                               ; preds = %54, %26
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @check_next2(%struct.TYPE_10__* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = call i64 @check_next2(%struct.TYPE_10__* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @lisxdigit(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = call i32 @save_and_next(%struct.TYPE_10__* %42)
  br label %54

44:                                               ; preds = %35
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i32 @save_and_next(%struct.TYPE_10__* %50)
  br label %53

52:                                               ; preds = %44
  br label %55

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %41
  br label %27

55:                                               ; preds = %52
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = call i32 @save(%struct.TYPE_10__* %56, i8 signext 0)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @luaZ_buffer(i32 %60)
  %62 = call i64 @luaO_str2num(i32 %61, i32* %6)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = load i32, i32* @TK_FLT, align 4
  %67 = call i32 @lexerror(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %55
  %69 = call i64 @ttisinteger(i32* %6)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = call i32 @ivalue(i32* %6)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @TK_INT, align 4
  store i32 %75, i32* %3, align 4
  br label %83

76:                                               ; preds = %68
  %77 = call i32 @ttisfloat(i32* %6)
  %78 = call i32 @lua_assert(i32 %77)
  %79 = call i32 @fltvalue(i32* %6)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @TK_FLT, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %76, %71
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lisdigit(i32) #1

declare dso_local i32 @save_and_next(%struct.TYPE_10__*) #1

declare dso_local i64 @check_next2(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @lisxdigit(i32) #1

declare dso_local i32 @save(%struct.TYPE_10__*, i8 signext) #1

declare dso_local i64 @luaO_str2num(i32, i32*) #1

declare dso_local i32 @luaZ_buffer(i32) #1

declare dso_local i32 @lexerror(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @ttisinteger(i32*) #1

declare dso_local i32 @ivalue(i32*) #1

declare dso_local i32 @ttisfloat(i32*) #1

declare dso_local i32 @fltvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
