; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_ruserpass.c_token.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_ruserpass.c_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toktab = type { i32, i64 }

@cfile = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@tokval = common dso_local global i64* null, align 8
@toktab = common dso_local global %struct.toktab* null, align 8
@ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @token() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.toktab*, align 8
  %5 = load i32, i32* @cfile, align 4
  %6 = call i64 @feof(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %138

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %34, %9
  %11 = load i32, i32* @cfile, align 4
  %12 = call i32 @getc(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @EOF, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 13
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 44
  br label %30

30:                                               ; preds = %27, %24, %21, %18, %15
  %31 = phi i1 [ true, %24 ], [ true, %21 ], [ true, %18 ], [ true, %15 ], [ %29, %27 ]
  br label %32

32:                                               ; preds = %30, %10
  %33 = phi i1 [ false, %10 ], [ %31, %30 ]
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %10

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @EOF, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %138

40:                                               ; preds = %35
  %41 = load i64*, i64** @tokval, align 8
  %42 = bitcast i64* %41 to i8*
  store i8* %42, i8** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 34
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* @cfile, align 4
  %48 = call i32 @getc(i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @EOF, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 34
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i1 [ false, %46 ], [ %53, %51 ]
  br i1 %55, label %56, label %67

56:                                               ; preds = %54
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %57, 92
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @cfile, align 4
  %61 = call i32 @getc(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %3, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %2, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %2, align 8
  store i8 %64, i8* %65, align 1
  br label %46

67:                                               ; preds = %54
  br label %107

68:                                               ; preds = %40
  %69 = load i32, i32* %3, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %2, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %2, align 8
  store i8 %70, i8* %71, align 1
  br label %73

73:                                               ; preds = %101, %68
  %74 = load i32, i32* @cfile, align 4
  %75 = call i32 @getc(i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @EOF, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 10
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 9
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 32
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 44
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 13
  br label %93

93:                                               ; preds = %90, %87, %84, %81, %78, %73
  %94 = phi i1 [ false, %87 ], [ false, %84 ], [ false, %81 ], [ false, %78 ], [ false, %73 ], [ %92, %90 ]
  br i1 %94, label %95, label %106

95:                                               ; preds = %93
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %96, 92
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @cfile, align 4
  %100 = call i32 @getc(i32 %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %3, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %2, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %2, align 8
  store i8 %103, i8* %104, align 1
  br label %73

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %67
  %108 = load i8*, i8** %2, align 8
  store i8 0, i8* %108, align 1
  %109 = load i64*, i64** @tokval, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 0, i32* %1, align 4
  br label %138

114:                                              ; preds = %107
  %115 = load %struct.toktab*, %struct.toktab** @toktab, align 8
  store %struct.toktab* %115, %struct.toktab** %4, align 8
  br label %116

116:                                              ; preds = %133, %114
  %117 = load %struct.toktab*, %struct.toktab** %4, align 8
  %118 = getelementptr inbounds %struct.toktab, %struct.toktab* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.toktab*, %struct.toktab** %4, align 8
  %123 = getelementptr inbounds %struct.toktab, %struct.toktab* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** @tokval, align 8
  %126 = call i32 @strcmp(i64 %124, i64* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %121
  %129 = load %struct.toktab*, %struct.toktab** %4, align 8
  %130 = getelementptr inbounds %struct.toktab, %struct.toktab* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %1, align 4
  br label %138

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.toktab*, %struct.toktab** %4, align 8
  %135 = getelementptr inbounds %struct.toktab, %struct.toktab* %134, i32 1
  store %struct.toktab* %135, %struct.toktab** %4, align 8
  br label %116

136:                                              ; preds = %116
  %137 = load i32, i32* @ID, align 4
  store i32 %137, i32* %1, align 4
  br label %138

138:                                              ; preds = %136, %128, %113, %39, %8
  %139 = load i32, i32* %1, align 4
  ret i32 %139
}

declare dso_local i64 @feof(i32) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @strcmp(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
