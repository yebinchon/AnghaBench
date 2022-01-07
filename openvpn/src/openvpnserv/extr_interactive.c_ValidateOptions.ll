; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_ValidateOptions.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_ValidateOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [159 x i32] [i32 89, i32 111, i32 117, i32 32, i32 104, i32 97, i32 118, i32 101, i32 32, i32 115, i32 112, i32 101, i32 99, i32 105, i32 102, i32 105, i32 101, i32 100, i32 32, i32 97, i32 32, i32 99, i32 111, i32 110, i32 102, i32 105, i32 103, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 108, i32 111, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 40, i32 37, i32 115, i32 32, i32 114, i32 101, i32 108, i32 97, i32 116, i32 105, i32 118, i32 101, i32 32, i32 116, i32 111, i32 32, i32 37, i32 115, i32 41, i32 32, i32 116, i32 104, i32 97, i32 116, i32 32, i32 114, i32 101, i32 113, i32 117, i32 105, i32 114, i32 101, i32 115, i32 32, i32 97, i32 100, i32 109, i32 105, i32 110, i32 32, i32 97, i32 112, i32 112, i32 114, i32 111, i32 118, i32 97, i32 108, i32 46, i32 32, i32 84, i32 104, i32 105, i32 115, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 32, i32 109, i32 97, i32 121, i32 32, i32 98, i32 101, i32 32, i32 97, i32 118, i32 111, i32 105, i32 100, i32 101, i32 100, i32 32, i32 98, i32 121, i32 32, i32 97, i32 100, i32 100, i32 105, i32 110, i32 103, i32 32, i32 121, i32 111, i32 117, i32 114, i32 32, i32 97, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 32, i32 116, i32 111, i32 32, i32 116, i32 104, i32 101, i32 32, i32 34, i32 37, i32 115, i32 34, i32 32, i32 103, i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@.str.1 = private unnamed_addr constant [144 x i32] [i32 89, i32 111, i32 117, i32 32, i32 104, i32 97, i32 118, i32 101, i32 32, i32 115, i32 112, i32 101, i32 99, i32 105, i32 102, i32 105, i32 101, i32 100, i32 32, i32 97, i32 110, i32 32, i32 111, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 40, i32 37, i32 115, i32 41, i32 32, i32 116, i32 104, i32 97, i32 116, i32 32, i32 109, i32 97, i32 121, i32 32, i32 98, i32 101, i32 32, i32 117, i32 115, i32 101, i32 100, i32 32, i32 111, i32 110, i32 108, i32 121, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 97, i32 100, i32 109, i32 105, i32 110, i32 32, i32 97, i32 112, i32 112, i32 114, i32 111, i32 118, i32 97, i32 108, i32 46, i32 32, i32 84, i32 104, i32 105, i32 115, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 32, i32 109, i32 97, i32 121, i32 32, i32 98, i32 101, i32 32, i32 97, i32 118, i32 111, i32 105, i32 100, i32 101, i32 100, i32 32, i32 98, i32 121, i32 32, i32 97, i32 100, i32 100, i32 105, i32 110, i32 103, i32 32, i32 121, i32 111, i32 117, i32 114, i32 32, i32 97, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 32, i32 116, i32 111, i32 32, i32 116, i32 104, i32 101, i32 32, i32 34, i32 37, i32 115, i32 34, i32 32, i32 103, i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@.str.2 = private unnamed_addr constant [19 x i32] [i32 67, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 76, i32 105, i32 110, i32 101, i32 84, i32 111, i32 65, i32 114, i32 103, i32 118, i32 87, i32 0], align 4
@ERROR_STARTUP_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i32] [i32 67, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 118, i32 97, i32 108, i32 105, i32 100, i32 97, i32 116, i32 101, i32 32, i32 111, i32 112, i32 116, i32 105, i32 111, i32 110, i32 115, i32 0], align 4
@exit_event = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i32] [i32 45, i32 45, i32 99, i32 111, i32 110, i32 102, i32 105, i32 103, i32 0], align 4
@settings = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ValidateOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ValidateOptions(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [2 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %10, align 4
  store i8* bitcast ([159 x i32]* @.str to i8*), i8** %12, align 8
  store i8* bitcast ([144 x i32]* @.str.1 to i8*), i8** %13, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i8** @CommandLineToArgvW(i8* %16, i32* %8)
  store i8** %17, i8*** %7, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ReturnLastError(i32 %21, i8* bitcast ([19 x i32]* @.str.2 to i8*))
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ERROR_STARTUP_DATA, align 4
  %25 = call i32 @ReturnError(i32 %23, i32 %24, i8* bitcast ([24 x i32]* @.str.3 to i8*), i32 1, i32* @exit_event)
  br label %141

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %10, align 4
  br label %141

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* bitcast ([9 x i32]* @.str.4 to i8*), i8** %35, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %36, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %42 = call i32 @CheckOption(i8* %40, i32 2, i8** %41, %struct.TYPE_3__* @settings)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %47 = call i32 @_countof(i8* %46)
  %48 = load i8*, i8** %12, align 8
  %49 = load i8**, i8*** %7, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings, i32 0, i32 0), align 4
  %54 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @openvpn_swprintf(i8* %45, i32 %47, i8* %48, i8* %51, i8* %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @ERROR_STARTUP_DATA, align 4
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %58 = call i32 @ReturnError(i32 %55, i32 %56, i8* %57, i32 1, i32* @exit_event)
  br label %59

59:                                               ; preds = %44, %34
  br label %141

60:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %136, %60
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %139

65:                                               ; preds = %61
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @IsOption(i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %136

74:                                               ; preds = %65
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i8**, i8*** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = call i32 @CheckOption(i8* %75, i32 %78, i8** %82, %struct.TYPE_3__* @settings)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %135, label %85

85:                                               ; preds = %74
  %86 = load i8**, i8*** %7, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @wcscmp(i8* bitcast ([9 x i32]* @.str.4 to i8*), i8* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %94, %95
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %116

98:                                               ; preds = %93
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %101 = call i32 @_countof(i8* %100)
  %102 = load i8*, i8** %12, align 8
  %103 = load i8**, i8*** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings, i32 0, i32 0), align 4
  %111 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @openvpn_swprintf(i8* %99, i32 %101, i8* %102, i8* %108, i8* %109, i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @ERROR_STARTUP_DATA, align 4
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %115 = call i32 @ReturnError(i32 %112, i32 %113, i8* %114, i32 1, i32* @exit_event)
  br label %134

116:                                              ; preds = %93, %85
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %119 = call i32 @_countof(i8* %118)
  %120 = load i8*, i8** %13, align 8
  %121 = load i8**, i8*** %7, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings, i32 0, i32 0), align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @openvpn_swprintf(i8* %117, i32 %119, i8* %120, i8* %125, i8* %128)
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @ERROR_STARTUP_DATA, align 4
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %133 = call i32 @ReturnError(i32 %130, i32 %131, i8* %132, i32 1, i32* @exit_event)
  br label %134

134:                                              ; preds = %116, %98
  br label %141

135:                                              ; preds = %74
  br label %136

136:                                              ; preds = %135, %73
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %61

139:                                              ; preds = %61
  %140 = load i32, i32* @TRUE, align 4
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %139, %134, %59, %29, %20
  %142 = load i8**, i8*** %7, align 8
  %143 = icmp ne i8** %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i8**, i8*** %7, align 8
  %146 = call i32 @LocalFree(i8** %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %10, align 4
  ret i32 %148
}

declare dso_local i8** @CommandLineToArgvW(i8*, i32*) #1

declare dso_local i32 @ReturnLastError(i32, i8*) #1

declare dso_local i32 @ReturnError(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @CheckOption(i8*, i32, i8**, %struct.TYPE_3__*) #1

declare dso_local i32 @openvpn_swprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @_countof(i8*) #1

declare dso_local i32 @IsOption(i8*) #1

declare dso_local i64 @wcscmp(i8*, i8*) #1

declare dso_local i32 @LocalFree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
