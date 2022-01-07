; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpcf_fold_ast.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpcf_fold_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__** }

@.str = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @mpcf_fold_ast(i32 %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__** %10, %struct.TYPE_9__*** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %156

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %3, align 8
  br label %156

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %30, i64 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %3, align 8
  br label %156

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %42, i64 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %3, align 8
  br label %156

45:                                               ; preds = %36, %33
  %46 = call %struct.TYPE_9__* @mpc_ast_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %136, %45
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %139

51:                                               ; preds = %47
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %136

59:                                               ; preds = %51
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %60, i64 %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = icmp ne %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %110

66:                                               ; preds = %59
  %67 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %67, i64 %69
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %78, i64 %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %77, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %76
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %88, i64 %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %94, i64 %96
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = call i32 @mpc_ast_add_child(%struct.TYPE_9__* %87, %struct.TYPE_9__* %98)
  br label %100

100:                                              ; preds = %86
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %76

103:                                              ; preds = %76
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %104, i64 %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = call i32 @mpc_ast_delete_no_children(%struct.TYPE_9__* %108)
  br label %135

110:                                              ; preds = %66, %59
  %111 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %111, i64 %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = icmp ne %struct.TYPE_9__* %115, null
  br i1 %116, label %117, label %134

117:                                              ; preds = %110
  %118 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %118, i64 %120
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %117
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %128 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %128, i64 %130
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = call i32 @mpc_ast_add_child(%struct.TYPE_9__* %127, %struct.TYPE_9__* %132)
  br label %134

134:                                              ; preds = %126, %117, %110
  br label %135

135:                                              ; preds = %134, %103
  br label %136

136:                                              ; preds = %135, %58
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %47

139:                                              ; preds = %47
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %147, i64 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %144, %139
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %3, align 8
  br label %156

156:                                              ; preds = %154, %41, %29, %17, %13
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %157
}

declare dso_local %struct.TYPE_9__* @mpc_ast_new(i8*, i8*) #1

declare dso_local i32 @mpc_ast_add_child(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @mpc_ast_delete_no_children(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
