; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connect_to_one_of.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connect_to_one_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_to_one_of(i8* %0, i32 %1, %struct.timeval* %2, i64* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.timeval* %2, %struct.timeval** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %14, align 8
  br label %20

20:                                               ; preds = %147, %6
  %21 = load i8*, i8** %14, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %148

24:                                               ; preds = %20
  %25 = load i8*, i8** %14, align 8
  store i8* %25, i8** %15, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i8*, i8** %15, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isspace(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %15, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 44
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %15, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %15, align 8
  store i8* %45, i8** %14, align 8
  br label %31

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i8*, i8** %15, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isspace(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %15, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 44
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ true, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %15, align 8
  store i8* %62, i8** %14, align 8
  br label %48

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %86, %63
  %65 = load i8*, i8** %15, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load i8*, i8** %15, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @isspace(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %15, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 44
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %15, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 47
  br label %84

84:                                               ; preds = %79, %74, %69, %64
  %85 = phi i1 [ false, %74 ], [ false, %69 ], [ false, %64 ], [ %83, %79 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %15, align 8
  br label %64

89:                                               ; preds = %84
  %90 = load i8*, i8** %14, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i8*, i8** %14, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = icmp eq i8* %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %89
  br label %148

98:                                               ; preds = %93
  %99 = load i8*, i8** %15, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = add nsw i64 %103, 1
  %105 = call i8* @llvm.stacksave()
  store i8* %105, i8** %16, align 8
  %106 = alloca i8, i64 %104, align 16
  store i64 %104, i64* %17, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @strncpyz(i8* %106, i8* %107, i32 %113)
  %115 = load i64*, i64** %10, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %98
  %118 = load i64*, i64** %10, align 8
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %117, %98
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.timeval*, %struct.timeval** %9, align 8
  %124 = call i32 @connect_to_this(i8* %106, i32 %122, %struct.timeval* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %142

127:                                              ; preds = %121
  %128 = load i8*, i8** %11, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i64, i64* %12, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i8*, i8** %11, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @strncpy(i8* %134, i8* %106, i64 %135)
  %137 = load i8*, i8** %11, align 8
  %138 = load i64, i64* %12, align 8
  %139 = sub i64 %138, 1
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 0, i8* %140, align 1
  br label %141

141:                                              ; preds = %133, %130, %127
  store i32 3, i32* %18, align 4
  br label %144

142:                                              ; preds = %121
  %143 = load i8*, i8** %15, align 8
  store i8* %143, i8** %14, align 8
  store i32 0, i32* %18, align 4
  br label %144

144:                                              ; preds = %142, %141
  %145 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %18, align 4
  switch i32 %146, label %150 [
    i32 0, label %147
    i32 3, label %148
  ]

147:                                              ; preds = %144
  br label %20

148:                                              ; preds = %144, %97, %20
  %149 = load i32, i32* %13, align 4
  ret i32 %149

150:                                              ; preds = %144
  unreachable
}

declare dso_local i64 @isspace(i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @connect_to_this(i8*, i32, %struct.timeval*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
