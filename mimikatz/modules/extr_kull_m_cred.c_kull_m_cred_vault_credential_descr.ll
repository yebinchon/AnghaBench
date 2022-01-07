; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_vault_credential_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_vault_credential_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i32] [i32 37, i32 42, i32 115, i32 42, i32 42, i32 86, i32 65, i32 85, i32 76, i32 84, i32 32, i32 67, i32 82, i32 69, i32 68, i32 69, i32 78, i32 84, i32 73, i32 65, i32 76, i32 42, i32 42, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [28 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 83, i32 99, i32 104, i32 101, i32 109, i32 97, i32 73, i32 100, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [38 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 48, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [28 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 76, i32 97, i32 115, i32 116, i32 87, i32 114, i32 105, i32 116, i32 116, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [38 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 49, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [38 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 50, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [31 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 70, i32 114, i32 105, i32 101, i32 110, i32 100, i32 108, i32 121, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [38 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 100, i32 119, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 115, i32 77, i32 97, i32 112, i32 83, i32 105, i32 122, i32 101, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [58 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 42, i32 32, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 32, i32 37, i32 51, i32 117, i32 32, i32 64, i32 32, i32 111, i32 102, i32 102, i32 115, i32 101, i32 116, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 32, i32 32, i32 40, i32 117, i32 110, i32 107, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_cred_vault_credential_descr(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = shl i32 %6, 1
  %8 = call i32 (i8*, ...) @kprintf(i8* bitcast ([25 x i32]* @.str to i8*), i32 %7, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %147

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 1
  %14 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.2 to i8*), i32 %13, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 9
  %17 = call i32 @kull_m_string_displayGUID(i32* %16)
  %18 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @kprintf(i8* bitcast ([38 x i32]* @.str.4 to i8*), i32 %20, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 %28, 1
  %30 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.5 to i8*), i32 %29, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 7
  %33 = call i32 @kull_m_string_displayFileTime(i32* %32)
  %34 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 %35, 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @kprintf(i8* bitcast ([38 x i32]* @.str.6 to i8*), i32 %36, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = shl i32 %44, 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @kprintf(i8* bitcast ([38 x i32]* @.str.7 to i8*), i32 %45, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = shl i32 %53, 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.8 to i8*), i32 %54, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = shl i32 %59, 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @kprintf(i8* bitcast ([38 x i32]* @.str.9 to i8*), i32 %60, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %121, %11
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %74, 4
  %76 = icmp ult i64 %70, %75
  br i1 %76, label %77, label %124

77:                                               ; preds = %68
  %78 = load i32, i32* %3, align 4
  %79 = shl i32 %78, 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @kprintf(i8* bitcast ([58 x i32]* @.str.10 to i8*), i32 %79, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %87, i32 %95, i32 %103, i32 %111, i32 %119)
  br label %121

121:                                              ; preds = %77
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %68

124:                                              ; preds = %68
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %142, %124
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @kull_m_cred_vault_credential_attribute_descr(i32 %133, i32 %140)
  br label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %125

145:                                              ; preds = %125
  %146 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  br label %147

147:                                              ; preds = %145, %2
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_displayGUID(i32*) #1

declare dso_local i32 @kull_m_string_displayFileTime(i32*) #1

declare dso_local i32 @kull_m_cred_vault_credential_attribute_descr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
