; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_ParseDate.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_ParseDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_IDATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ParseDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseDate(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %155

19:                                               ; preds = %2
  %20 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %21 = load i32, i32* @LOCALE_IDATE, align 4
  %22 = call i32 @GetLocaleInfoW(i32 %20, i32 %21, i32* %10, i32 4)
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %25 [
    i32 0, label %24
    i32 1, label %54
    i32 2, label %83
  ]

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %19, %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %27 = call i32 @ReadNumber(i32** %11, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %155

31:                                               ; preds = %25
  %32 = call i32 @ReadSeparator(i32** %11)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %155

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %38 = call i32 @ReadNumber(i32** %11, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %155

42:                                               ; preds = %36
  %43 = call i32 @ReadSeparator(i32** %11)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %155

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %49 = call i32 @ReadNumber(i32** %11, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %155

53:                                               ; preds = %47
  br label %112

54:                                               ; preds = %19
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %56 = call i32 @ReadNumber(i32** %11, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %3, align 4
  br label %155

60:                                               ; preds = %54
  %61 = call i32 @ReadSeparator(i32** %11)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %155

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %67 = call i32 @ReadNumber(i32** %11, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %3, align 4
  br label %155

71:                                               ; preds = %65
  %72 = call i32 @ReadSeparator(i32** %11)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %3, align 4
  br label %155

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %78 = call i32 @ReadNumber(i32** %11, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %155

82:                                               ; preds = %76
  br label %112

83:                                               ; preds = %19
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %85 = call i32 @ReadNumber(i32** %11, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %3, align 4
  br label %155

89:                                               ; preds = %83
  %90 = call i32 @ReadSeparator(i32** %11)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %3, align 4
  br label %155

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %96 = call i32 @ReadNumber(i32** %11, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %3, align 4
  br label %155

100:                                              ; preds = %94
  %101 = call i32 @ReadSeparator(i32** %11)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %155

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %107 = call i32 @ReadNumber(i32** %11, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %3, align 4
  br label %155

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %82, %53
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp sle i32 %114, 99
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 80
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1900
  store i32 %123, i32* %121, align 4
  br label %128

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 2000
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %112
  %130 = call i32 @SystemTimeToFileTime(%struct.TYPE_11__* %6, %struct.TYPE_13__* %7)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @FALSE, align 4
  store i32 %133, i32* %3, align 4
  br label %155

134:                                              ; preds = %129
  %135 = call i32 @LocalFileTimeToFileTime(%struct.TYPE_13__* %7, %struct.TYPE_13__* %8)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %3, align 4
  br label %155

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @RtlTimeToSecondsSince1970(%struct.TYPE_12__* %9, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %139
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %3, align 4
  br label %155

153:                                              ; preds = %139
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %151, %137, %132, %109, %103, %98, %92, %87, %80, %74, %69, %63, %58, %51, %45, %40, %34, %29, %17
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetLocaleInfoW(i32, i32, i32*, i32) #2

declare dso_local i32 @ReadNumber(i32**, i32*) #2

declare dso_local i32 @ReadSeparator(i32**) #2

declare dso_local i32 @SystemTimeToFileTime(%struct.TYPE_11__*, %struct.TYPE_13__*) #2

declare dso_local i32 @LocalFileTimeToFileTime(%struct.TYPE_13__*, %struct.TYPE_13__*) #2

declare dso_local i32 @RtlTimeToSecondsSince1970(%struct.TYPE_12__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
