; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_check_label.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_check_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.label = type { i8*, %struct.TYPE_4__*, %struct.label* }
%struct.TYPE_4__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%5d (0x%04x): returning invalid label %s.\0A\00", align 1
@stack = common dso_local global %struct.TYPE_3__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.label*, i8**, %struct.label**, %struct.label**, i32)* @check_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_label(%struct.label* %0, i8** %1, %struct.label** %2, %struct.label** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.label*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.label**, align 8
  %10 = alloca %struct.label**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.label*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.label* %0, %struct.label** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.label** %2, %struct.label*** %9, align 8
  store %struct.label** %3, %struct.label*** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @delspc(i8* %19)
  %21 = load i8**, i8*** %8, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i8**, i8*** %8, align 8
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  br label %24

24:                                               ; preds = %42, %5
  %25 = load i8*, i8** %13, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isalnum(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %13, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 95
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %13, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br label %39

39:                                               ; preds = %34, %29, %24
  %40 = phi i1 [ true, %29 ], [ true, %24 ], [ %38, %34 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %13, align 8
  br label %24

45:                                               ; preds = %39
  %46 = load i8*, i8** %13, align 8
  %47 = load i8**, i8*** %8, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %46 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %14, align 4
  %53 = load %struct.label*, %struct.label** %7, align 8
  store %struct.label* %53, %struct.label** %12, align 8
  br label %54

54:                                               ; preds = %148, %45
  %55 = load %struct.label*, %struct.label** %12, align 8
  %56 = icmp ne %struct.label* %55, null
  br i1 %56, label %57, label %152

57:                                               ; preds = %54
  %58 = load %struct.label*, %struct.label** %12, align 8
  %59 = getelementptr inbounds %struct.label, %struct.label* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strlen(i8* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %15, align 4
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %14, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %16, align 4
  %71 = load %struct.label*, %struct.label** %12, align 8
  %72 = getelementptr inbounds %struct.label, %struct.label* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @strncmp(i8* %73, i8* %75, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ugt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83, %69
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** %13, align 8
  %92 = load i8**, i8*** %8, align 8
  store i8* %91, i8** %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  store i32 0, i32* %6, align 4
  br label %159

94:                                               ; preds = %83, %80
  %95 = load i32, i32* %17, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97, %94
  %102 = load %struct.label**, %struct.label*** %10, align 8
  %103 = icmp ne %struct.label** %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.label*, %struct.label** %12, align 8
  %106 = load %struct.label**, %struct.label*** %10, align 8
  store %struct.label* %105, %struct.label** %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  br label %148

108:                                              ; preds = %97
  %109 = load i8*, i8** %13, align 8
  %110 = load i8**, i8*** %8, align 8
  store i8* %109, i8** %110, align 8
  %111 = load %struct.label*, %struct.label** %12, align 8
  %112 = getelementptr inbounds %struct.label, %struct.label* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = icmp ne %struct.TYPE_4__* %113, null
  br i1 %114, label %115, label %145

115:                                              ; preds = %108
  %116 = load %struct.label*, %struct.label** %12, align 8
  %117 = getelementptr inbounds %struct.label, %struct.label* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = call i32 @compute_ref(%struct.TYPE_4__* %118, i32 1)
  %120 = load %struct.label*, %struct.label** %12, align 8
  %121 = getelementptr inbounds %struct.label, %struct.label* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %144, label %126

126:                                              ; preds = %115
  %127 = load i32, i32* @verbose, align 4
  %128 = icmp sge i32 %127, 6
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load i32, i32* @stderr, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stack, align 8
  %132 = load i64, i64* @sp, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @addr, align 4
  %137 = load %struct.label*, %struct.label** %12, align 8
  %138 = getelementptr inbounds %struct.label, %struct.label* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @fprintf(i32 %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %136, i8* %139)
  br label %141

141:                                              ; preds = %129, %126
  %142 = load %struct.label*, %struct.label** %12, align 8
  %143 = load %struct.label**, %struct.label*** %9, align 8
  store %struct.label* %142, %struct.label** %143, align 8
  store i32 0, i32* %6, align 4
  br label %159

144:                                              ; preds = %115
  br label %145

145:                                              ; preds = %144, %108
  %146 = load %struct.label*, %struct.label** %12, align 8
  %147 = load %struct.label**, %struct.label*** %9, align 8
  store %struct.label* %146, %struct.label** %147, align 8
  store i32 1, i32* %6, align 4
  br label %159

148:                                              ; preds = %107
  %149 = load %struct.label*, %struct.label** %12, align 8
  %150 = getelementptr inbounds %struct.label, %struct.label* %149, i32 0, i32 2
  %151 = load %struct.label*, %struct.label** %150, align 8
  store %struct.label* %151, %struct.label** %12, align 8
  br label %54

152:                                              ; preds = %54
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i8*, i8** %13, align 8
  %157 = load i8**, i8*** %8, align 8
  store i8* %156, i8** %157, align 8
  br label %158

158:                                              ; preds = %155, %152
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %158, %145, %141, %93
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i8* @delspc(i8*) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @compute_ref(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
