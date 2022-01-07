; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_property.c_expand_property.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_property.c_expand_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@M_PROPERTY_GET_STRING = common dso_local global i32 0, align 4
@M_PROPERTY_PRINT = common dso_local global i32 0, align 4
@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"(unavailable)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(error)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_property*, i8**, i32*, i32, i32, i8*)* @expand_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_property(%struct.m_property* %0, i8** %1, i32* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca %struct.m_property*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %3, i32* %24, align 4
  store %struct.m_property* %0, %struct.m_property** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %25 = call i32 @bstr_eatstart0(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = call i32 @bstr_eatstart0(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %28, %6
  %32 = phi i1 [ false, %6 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i1 [ true, %31 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = call i32 @bstr_eatstart0(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %42, i32* %16, align 4
  %43 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %43, i8 0, i64 4, i1 false)
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @bstr_split_tok(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %7, %struct.TYPE_9__* %17)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi i1 [ false, %39 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 1, i32* %16, align 4
  br label %60

60:                                               ; preds = %59, %56, %51
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @M_PROPERTY_GET_STRING, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @M_PROPERTY_PRINT, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %19, align 4
  store i8* null, i8** %20, align 8
  %69 = load %struct.m_property*, %struct.m_property** %8, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @m_property_do_bstr(%struct.m_property* %69, i32 %73, i32 %70, i8** %20, i8* %71)
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %67
  %78 = load i8*, i8** %20, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i8*, i8** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @bstr_equals0(i32 %83, i8* %81)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %80, %77
  %87 = phi i1 [ false, %77 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %88, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %22, align 4
  br label %132

92:                                               ; preds = %67
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i8*, i8** %20, align 8
  %97 = icmp ne i8* %96, null
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %100, %101
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %22, align 4
  br label %131

104:                                              ; preds = %92
  %105 = load i8*, i8** %20, align 8
  %106 = icmp ne i8* %105, null
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %22, align 4
  %110 = load i8*, i8** %20, align 8
  store i8* %110, i8** %23, align 8
  %111 = load i8*, i8** %20, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %125, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  store i8* %124, i8** %23, align 8
  br label %125

125:                                              ; preds = %119, %116, %113, %104
  %126 = load i8**, i8*** %9, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = load i8*, i8** %23, align 8
  %129 = call i32 @bstr0(i8* %128)
  %130 = call i32 @append_str(i8** %126, i32* %127, i32 %129)
  br label %131

131:                                              ; preds = %125, %95
  br label %132

132:                                              ; preds = %131, %86
  %133 = load i8*, i8** %20, align 8
  %134 = call i32 @talloc_free(i8* %133)
  %135 = load i32, i32* %22, align 4
  ret i32 %135
}

declare dso_local i32 @bstr_eatstart0(%struct.TYPE_9__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @bstr_split_tok(i32, i8*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @m_property_do_bstr(%struct.m_property*, i32, i32, i8**, i8*) #1

declare dso_local i64 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @append_str(i8**, i32*, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
