; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sid.c_kuhl_m_sid_displayMessage.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sid.c_kuhl_m_sid_displayMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [5 x i32] [i32 10, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 32, i32 32, i32 37, i32 115, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [15 x i32] [i32 115, i32 65, i32 77, i32 65, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 37, i32 42, i32 83, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [10 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 83, i32 105, i32 100, i32 0], align 4
@.str.6 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [11 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 71, i32 85, i32 73, i32 68, i32 0], align 4
@.str.8 = private unnamed_addr constant [10 x i32] [i32 10, i32 32, i32 32, i32 32, i32 91, i32 37, i32 117, i32 93, i32 32, i32 0], align 4
@.str.9 = private unnamed_addr constant [11 x i32] [i32 115, i32 73, i32 68, i32 72, i32 105, i32 115, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@.str.10 = private unnamed_addr constant [17 x i32] [i32 32, i32 40, i32 32, i32 37, i32 115, i32 32, i32 45, i32 45, i32 32, i32 37, i32 115, i32 92, i32 37, i32 115, i32 32, i32 41, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_sid_displayMessage(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %9, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @ldap_first_entry(i32 %13, i64 %14)
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %163, %2
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %167

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ldap_get_dn(i32 %20, i64 %21)
  %23 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str to i8*), i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @ldap_first_attribute(i32 %24, i64 %25, i32** %9)
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %151, %19
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %156

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str.1 to i8*), i64 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call %struct.TYPE_4__** @ldap_get_values_len(i32 %33, i64 %34, i64 %35)
  store %struct.TYPE_4__** %36, %struct.TYPE_4__*** %10, align 8
  %37 = icmp ne %struct.TYPE_4__** %36, null
  br i1 %37, label %38, label %148

38:                                               ; preds = %30
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @_wcsicmp(i64 %39, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @_wcsicmp(i64 %43, i8* bitcast ([15 x i32]* @.str.3 to i8*))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42, %38
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.4 to i8*), i32 %51, i64 %56)
  br label %145

58:                                               ; preds = %42
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @_wcsicmp(i64 %59, i8* bitcast ([10 x i32]* @.str.5 to i8*))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @kull_m_string_displaySID(i64 %67)
  %69 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  br label %144

70:                                               ; preds = %58
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @_wcsicmp(i64 %71, i8* bitcast ([11 x i32]* @.str.7 to i8*))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @kull_m_string_displayGUID(i32 %80)
  %82 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  br label %143

83:                                               ; preds = %70
  store i64 0, i64* %11, align 8
  br label %84

84:                                               ; preds = %138, %83
  %85 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %85, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = icmp ne %struct.TYPE_4__* %88, null
  br i1 %89, label %90, label %141

90:                                               ; preds = %84
  %91 = load i64, i64* %11, align 8
  %92 = call i32 (i8*, ...) @kprintf(i8* bitcast ([10 x i32]* @.str.8 to i8*), i64 %91)
  %93 = load i64, i64* %6, align 8
  %94 = call i64 @_wcsicmp(i64 %93, i8* bitcast ([11 x i32]* @.str.9 to i8*))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %90
  %97 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %97, i64 %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @kull_m_string_displaySID(i64 %102)
  %104 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %104, i64 %105
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @kull_m_token_getNameDomainFromSID(i64 %109, i64* %7, i64* %8, i32* %12, i32* null)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %96
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @kull_m_token_getSidNameUse(i32 %113)
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.10 to i8*), i32 %114, i64 %115, i64 %116)
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @LocalFree(i64 %118)
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @LocalFree(i64 %120)
  br label %122

122:                                              ; preds = %112, %96
  br label %137

123:                                              ; preds = %90
  %124 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %125 = load i64, i64* %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %124, i64 %125
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @kull_m_string_wprintf_hex(i64 %129, i32 %135, i32 1)
  br label %137

137:                                              ; preds = %123, %122
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %11, align 8
  br label %84

141:                                              ; preds = %84
  %142 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  br label %143

143:                                              ; preds = %141, %74
  br label %144

144:                                              ; preds = %143, %62
  br label %145

145:                                              ; preds = %144, %46
  %146 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %147 = call i32 @ldap_value_free_len(%struct.TYPE_4__** %146)
  br label %148

148:                                              ; preds = %145, %30
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @ldap_memfree(i64 %149)
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %3, align 4
  %153 = load i64, i64* %5, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = call i64 @ldap_next_attribute(i32 %152, i64 %153, i32* %154)
  store i64 %155, i64* %6, align 8
  br label %27

156:                                              ; preds = %27
  %157 = load i32*, i32** %9, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @ber_free(i32* %160, i32 0)
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %3, align 4
  %165 = load i64, i64* %5, align 8
  %166 = call i64 @ldap_next_entry(i32 %164, i64 %165)
  store i64 %166, i64* %5, align 8
  br label %16

167:                                              ; preds = %16
  ret void
}

declare dso_local i64 @ldap_first_entry(i32, i64) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @ldap_get_dn(i32, i64) #1

declare dso_local i64 @ldap_first_attribute(i32, i64, i32**) #1

declare dso_local %struct.TYPE_4__** @ldap_get_values_len(i32, i64, i64) #1

declare dso_local i64 @_wcsicmp(i64, i8*) #1

declare dso_local i32 @kull_m_string_displaySID(i64) #1

declare dso_local i32 @kull_m_string_displayGUID(i32) #1

declare dso_local i64 @kull_m_token_getNameDomainFromSID(i64, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @kull_m_token_getSidNameUse(i32) #1

declare dso_local i32 @LocalFree(i64) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i64, i32, i32) #1

declare dso_local i32 @ldap_value_free_len(%struct.TYPE_4__**) #1

declare dso_local i32 @ldap_memfree(i64) #1

declare dso_local i64 @ldap_next_attribute(i32, i64, i32*) #1

declare dso_local i32 @ber_free(i32*, i32) #1

declare dso_local i64 @ldap_next_entry(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
