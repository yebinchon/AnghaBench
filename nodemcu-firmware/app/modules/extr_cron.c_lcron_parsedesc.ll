; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_parsedesc.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_parsedesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cronent_desc = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"invalid spec (separator @%d)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid spec (trailing @%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.cronent_desc*)* @lcron_parsedesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcron_parsedesc(i32* %0, i8* %1, %struct.cronent_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cronent_desc*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.cronent_desc* %2, %struct.cronent_desc** %7, align 8
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i8* @lcron_parsepart(i32* %10, i8* %11, i8** %8, i32 0, i32 59)
  %13 = load %struct.cronent_desc*, %struct.cronent_desc** %7, align 8
  %14 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 32
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 9
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @luaL_error(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %4, align 4
  br label %152

33:                                               ; preds = %19, %3
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i8* @lcron_parsepart(i32* %34, i8* %36, i8** %8, i32 0, i32 23)
  %38 = load %struct.cronent_desc*, %struct.cronent_desc** %7, align 8
  %39 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 32
  br i1 %43, label %44, label %58

44:                                               ; preds = %33
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 9
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @luaL_error(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %4, align 4
  br label %152

58:                                               ; preds = %44, %33
  %59 = load i32*, i32** %5, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = call i8* @lcron_parsepart(i32* %59, i8* %61, i8** %8, i32 1, i32 31)
  %63 = load %struct.cronent_desc*, %struct.cronent_desc** %7, align 8
  %64 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 32
  br i1 %68, label %69, label %83

69:                                               ; preds = %58
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 9
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @luaL_error(i32* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %4, align 4
  br label %152

83:                                               ; preds = %69, %58
  %84 = load i32*, i32** %5, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = call i8* @lcron_parsepart(i32* %84, i8* %86, i8** %8, i32 1, i32 12)
  %88 = load %struct.cronent_desc*, %struct.cronent_desc** %7, align 8
  %89 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 32
  br i1 %93, label %94, label %108

94:                                               ; preds = %83
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 9
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @luaL_error(i32* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %106)
  store i32 %107, i32* %4, align 4
  br label %152

108:                                              ; preds = %94, %83
  %109 = load i32*, i32** %5, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = call i8* @lcron_parsepart(i32* %109, i8* %111, i8** %8, i32 0, i32 6)
  %113 = load %struct.cronent_desc*, %struct.cronent_desc** %7, align 8
  %114 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %134, %108
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 32
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 9
  br label %130

130:                                              ; preds = %125, %120
  %131 = phi i1 [ true, %120 ], [ %129, %125 ]
  br label %132

132:                                              ; preds = %130, %115
  %133 = phi i1 [ false, %115 ], [ %131, %130 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  br label %115

137:                                              ; preds = %132
  %138 = load i8*, i8** %8, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load i32*, i32** %5, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = call i32 @luaL_error(i32* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  store i32 %150, i32* %4, align 4
  br label %152

151:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %142, %99, %74, %49, %24
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i8* @lcron_parsepart(i32*, i8*, i8**, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
