; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_GetStartupData.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_GetStartupData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64*, i64* }

@exit_event = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PeekNamedPipeAsync failed\00", align 1
@.str.1 = private unnamed_addr constant [19 x i32] [i32 80, i32 101, i32 101, i32 107, i32 78, i32 97, i32 109, i32 101, i32 100, i32 80, i32 105, i32 112, i32 101, i32 65, i32 115, i32 121, i32 110, i32 99, i32 0], align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"malformed startup data: 1 byte received\00", align 1
@ERROR_STARTUP_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i32] [i32 71, i32 101, i32 116, i32 83, i32 116, i32 97, i32 114, i32 116, i32 117, i32 112, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i32] [i32 109, i32 97, i32 108, i32 108, i32 111, i32 99, i32 0], align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"ReadPipeAsync failed\00", align 1
@.str.7 = private unnamed_addr constant [14 x i32] [i32 82, i32 101, i32 97, i32 100, i32 80, i32 105, i32 112, i32 101, i32 65, i32 115, i32 121, i32 110, i32 99, i32 0], align 4
@M_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Startup data is not NULL terminated\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Startup data ends at working directory\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Startup data ends at command line options\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @GetStartupData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetStartupData(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64* null, i64** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @PeekNamedPipeAsync(i32 %11, i32 1, i32* @exit_event)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @M_SYSERR, align 4
  %17 = call i32 @TEXT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @MsgToEventLog(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ReturnLastError(i32 %19, i8* bitcast ([19 x i32]* @.str.1 to i8*))
  br label %130

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @M_SYSERR, align 4
  %29 = call i32 @TEXT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @MsgToEventLog(i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ERROR_STARTUP_DATA, align 4
  %33 = call i32 @ReturnError(i32 %31, i32 %32, i8* bitcast ([15 x i32]* @.str.3 to i8*), i32 1, i32* @exit_event)
  br label %130

34:                                               ; preds = %21
  %35 = load i32, i32* %9, align 4
  %36 = call i64* @malloc(i32 %35)
  store i64* %36, i64** %8, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = icmp eq i64* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @M_SYSERR, align 4
  %41 = call i32 @TEXT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @MsgToEventLog(i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ReturnLastError(i32 %43, i8* bitcast ([7 x i32]* @.str.5 to i8*))
  br label %130

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @ReadPipeAsync(i32 %46, i64* %47, i32 %48, i32 1, i32* @exit_event)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* @M_SYSERR, align 4
  %55 = call i32 @TEXT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i32 @MsgToEventLog(i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ReturnLastError(i32 %57, i8* bitcast ([14 x i32]* @.str.7 to i8*))
  br label %130

59:                                               ; preds = %45
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* @M_ERR, align 4
  %68 = call i32 @TEXT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %69 = call i32 @MsgToEventLog(i32 %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @ERROR_STARTUP_DATA, align 4
  %72 = call i32 @ReturnError(i32 %70, i32 %71, i8* bitcast ([15 x i32]* @.str.3 to i8*), i32 1, i32* @exit_event)
  br label %130

73:                                               ; preds = %59
  %74 = load i64*, i64** %8, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i64* %74, i64** %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @wcslen(i64* %79)
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp ule i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %73
  %89 = load i32, i32* @M_ERR, align 4
  %90 = call i32 @TEXT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %91 = call i32 @MsgToEventLog(i32 %89, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @ERROR_STARTUP_DATA, align 4
  %94 = call i32 @ReturnError(i32 %92, i32 %93, i8* bitcast ([15 x i32]* @.str.3 to i8*), i32 1, i32* @exit_event)
  br label %130

95:                                               ; preds = %73
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i64* %100, i64** %102, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = call i32 @wcslen(i64* %105)
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %6, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %6, align 8
  %112 = load i64, i64* %6, align 8
  %113 = icmp ule i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %95
  %115 = load i32, i32* @M_ERR, align 4
  %116 = call i32 @TEXT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %117 = call i32 @MsgToEventLog(i32 %115, i32 %116)
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @ERROR_STARTUP_DATA, align 4
  %120 = call i32 @ReturnError(i32 %118, i32 %119, i8* bitcast ([15 x i32]* @.str.3 to i8*), i32 1, i32* @exit_event)
  br label %130

121:                                              ; preds = %95
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  store i64* %126, i64** %128, align 8
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %3, align 4
  br label %136

130:                                              ; preds = %114, %88, %66, %53, %39, %27, %15
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i64* null, i64** %132, align 8
  %133 = load i64*, i64** %8, align 8
  %134 = call i32 @free(i64* %133)
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %130, %121
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @PeekNamedPipeAsync(i32, i32, i32*) #1

declare dso_local i32 @MsgToEventLog(i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @ReturnLastError(i32, i8*) #1

declare dso_local i32 @ReturnError(i32, i32, i8*, i32, i32*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @ReadPipeAsync(i32, i64*, i32, i32, i32*) #1

declare dso_local i32 @wcslen(i64*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
