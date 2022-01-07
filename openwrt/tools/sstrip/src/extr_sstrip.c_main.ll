; ModuleID = '/home/carl/AnghaBench/openwrt/tools/sstrip/src/extr_sstrip.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/sstrip/src/extr_sstrip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }
%union.anon.0 = type { i32* }

@.str = private unnamed_addr constant [301 x i8] c"Usage: sstrip FILE...\0Asstrip discards all nonessential bytes from an executable.\0A\0AVersion 2.0-X Copyright (C) 2000,2001 Brian Raiter.\0ACross-devel hacks Copyright (C) 2004 Manuel Novoa III.\0AThis program is free software, licensed under the GNU\0AGeneral Public License. There is absolutely no warranty.\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@progname = common dso_local global i8* null, align 8
@filename = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"can't open\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 4
  %8 = alloca %union.anon.0, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %25

22:                                               ; preds = %14, %2
  %23 = call i32 @printf(i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %150

25:                                               ; preds = %14
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** @progname, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8** %30, i8*** %10, align 8
  br label %31

31:                                               ; preds = %138, %25
  %32 = load i8**, i8*** %10, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %141

35:                                               ; preds = %31
  %36 = load i8**, i8*** %10, align 8
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** @filename, align 8
  %38 = load i8**, i8*** %10, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = call i32 @open(i8* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = call i32 @ferr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %138

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = bitcast %union.anon* %7 to i32*
  %51 = call i32 @readelfheaderident(i32 %49, i32* %50)
  switch i32 %51, label %132 [
    i32 129, label %52
    i32 128, label %92
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = bitcast %union.anon* %7 to i32*
  %55 = call i32 @readelfheader32(i32 %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = bitcast %union.anon* %7 to i32*
  %60 = bitcast %union.anon.0* %8 to i32**
  %61 = call i32 @readphdrtable32(i32 %58, i32* %59, i32** %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = bitcast %union.anon* %7 to i32*
  %65 = bitcast %union.anon.0* %8 to i32**
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @getmemorysize32(i32* %64, i32* %66, i64* %9)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @truncatezeros(i32 %70, i64* %9)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = bitcast %union.anon* %7 to i32*
  %75 = bitcast %union.anon.0* %8 to i32**
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @modifyheaders32(i32* %74, i32* %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = bitcast %union.anon* %7 to i32*
  %83 = bitcast %union.anon.0* %8 to i32**
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @commitchanges32(i32 %81, i32* %82, i32* %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80, %73, %69, %63, %57, %52
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %88, %80
  br label %135

92:                                               ; preds = %48
  %93 = load i32, i32* %6, align 4
  %94 = bitcast %union.anon* %7 to i32*
  %95 = call i32 @readelfheader64(i32 %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = bitcast %union.anon* %7 to i32*
  %100 = bitcast %union.anon.0* %8 to i32**
  %101 = call i32 @readphdrtable64(i32 %98, i32* %99, i32** %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %97
  %104 = bitcast %union.anon* %7 to i32*
  %105 = bitcast %union.anon.0* %8 to i32**
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @getmemorysize64(i32* %104, i32* %106, i64* %9)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %103
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @truncatezeros(i32 %110, i64* %9)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = bitcast %union.anon* %7 to i32*
  %115 = bitcast %union.anon.0* %8 to i32**
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @modifyheaders64(i32* %114, i32* %116, i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load i32, i32* %6, align 4
  %122 = bitcast %union.anon* %7 to i32*
  %123 = bitcast %union.anon.0* %8 to i32**
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @commitchanges64(i32 %121, i32* %122, i32* %124, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %120, %113, %109, %103, %97, %92
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %128, %120
  br label %135

132:                                              ; preds = %48
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %132, %131, %91
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @close(i32 %136)
  br label %138

138:                                              ; preds = %135, %44
  %139 = load i8**, i8*** %10, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i32 1
  store i8** %140, i8*** %10, align 8
  br label %31

141:                                              ; preds = %31
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @EXIT_FAILURE, align 4
  br label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %22
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ferr(i8*) #1

declare dso_local i32 @readelfheaderident(i32, i32*) #1

declare dso_local i32 @readelfheader32(i32, i32*) #1

declare dso_local i32 @readphdrtable32(i32, i32*, i32**) #1

declare dso_local i32 @getmemorysize32(i32*, i32*, i64*) #1

declare dso_local i32 @truncatezeros(i32, i64*) #1

declare dso_local i32 @modifyheaders32(i32*, i32*, i64) #1

declare dso_local i32 @commitchanges32(i32, i32*, i32*, i64) #1

declare dso_local i32 @readelfheader64(i32, i32*) #1

declare dso_local i32 @readphdrtable64(i32, i32*, i32**) #1

declare dso_local i32 @getmemorysize64(i32*, i32*, i64*) #1

declare dso_local i32 @modifyheaders64(i32*, i32*, i64) #1

declare dso_local i32 @commitchanges64(i32, i32*, i32*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
